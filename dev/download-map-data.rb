require 'json'
require 'digest'
require 'open-uri'
require 'fileutils'
require 'tempfile'

root = File.expand_path('..', __dir__)
manifest = JSON.parse(File.read(File.join(__dir__, 'map-data-manifest.json')))

manifest.each do |name, asset|
  destination = File.join(root, asset.fetch('Destination'))
  FileUtils.mkdir_p(File.dirname(destination))
  Tempfile.create(['map-data-', '.download'], File.dirname(destination)) do |temporary|
    temporary.binmode
    puts "Downloading #{name} from #{asset.fetch('Url')}"
    URI.open(asset.fetch('Url'), open_timeout: 30, read_timeout: 60) do |source|
      IO.copy_stream(source, temporary)
    end
    temporary.close
    checksum = Digest::SHA256.file(temporary.path).hexdigest.upcase
    abort "Checksum mismatch for #{name}: expected #{asset['SHA256']}, received #{checksum}" unless checksum == asset.fetch('SHA256')
    FileUtils.mv(temporary.path, destination, force: true)
    puts "Updated #{asset['Destination']}"
  end
end

load File.join(__dir__, 'check-map-data.rb')
