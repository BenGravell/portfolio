# Run after `pixi run build`: pixi run ruby -S bundle exec ruby dev/check-about-media.rb
require 'nokogiri'
require 'yaml'
require 'uri'

root = File.expand_path('..', __dir__)
data = %w[books games music].map { |name| YAML.load_file(File.join(root, '_data/about_media', name + '.yml')) }
page = Nokogiri::HTML(File.read(File.join(root, '_site/about.html')))
baseurl = YAML.load_file(File.join(root, '_config.yml')).fetch('baseurl', '')

data.each do |catalog|
  items = catalog.fetch('groups').flat_map { |group| group.fetch('items') }
  cards = page.css("figure.#{catalog.fetch('kind')}")
  raise 'Missing or duplicate media cards' unless cards.size == items.size
  cards.zip(items).each do |card, item|
    title = item.fetch('title')
    raise "Wrong caption: #{title}" unless card.at_css('strong').text == title
    image = card.at_css('img')
    expected_image = baseurl + catalog.fetch('image_dir') + item.fetch('image')
    raise "Wrong cover: #{title}" unless image['src'] == expected_image && !image['alt'].empty?
    raise "Missing image file: #{title}" unless File.file?(File.join(root, catalog['image_dir'], item['image']))
    lightbox = card.at_css('a.glightbox')
    raise "Broken lightbox: #{title}" unless lightbox['href'] == expected_image && lightbox['data-gallery'] == catalog['gallery']
    links = card.css('a.content-link')
    raise "Missing or duplicate outbound link: #{title}" unless links.size == 1
    link = links.first
    raise "Inaccessible outbound link: #{title}" unless link['aria-label'] == "Open on #{catalog['platform']}" && link['rel'].split.include?('noopener')
    if item['url']
      raise "Wrong destination: #{title}" unless link['href'] == item['url']
    else
      uri = URI(link['href'])
      raise "Wrong book search: #{title}" unless uri.host == 'www.goodreads.com' && URI.decode_www_form(uri.query).to_h['q'] == "#{title} #{item['creator']}"
    end
    raise "Wrong personal badge: #{title}" unless card.css('.me-badge').size == (item['is_me'] ? 1 : 0)
  end
end
puts 'About media cards, images, lightboxes, outbound links, and badges passed.'
