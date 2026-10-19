require 'json'
require 'digest'

root = File.expand_path('..', __dir__)
manifest = JSON.parse(File.read(File.join(__dir__, 'map-data-manifest.json')))
errors = []

manifest.each do |name, asset|
  path = File.join(root, asset.fetch('Destination'))
  unless File.file?(path)
    errors << "Missing #{asset['Destination']}"
    next
  end

  checksum = Digest::SHA256.file(path).hexdigest.upcase
  errors << "#{name} checksum: expected #{asset['SHA256']}, received #{checksum}" unless checksum == asset.fetch('SHA256')
  begin
    data = JSON.parse(File.read(path))
    raise TypeError, 'expected a JSON object' unless data.is_a?(Hash)
    raise TypeError, "expected type #{asset['JsonType']}" unless data['type'] == asset.fetch('JsonType')

    if asset['JsonType'] == 'Topology'
      objects = data.fetch('objects')
      raise TypeError, 'unexpected topology objects' unless objects.keys.sort == asset.fetch('TopologyObjects').sort
      items = objects.fetch(asset.fetch('GeometryObject')).fetch('geometries')
      expected = asset.fetch('GeometryCount')
    else
      items = data.fetch('features')
      expected = asset.fetch('FeatureCount')
    end
    raise TypeError, "expected #{expected} items" unless items.is_a?(Array) && items.size == expected
  rescue JSON::ParserError, KeyError, TypeError, NoMethodError => e
    errors << "#{name}: #{e.message}"
    next
  end
  puts "Checked #{asset['Destination']} (#{items.size} items)"
end

abort "Map data validation failed:\n - #{errors.join("\n - ")}" unless errors.empty?
puts 'Map data validation passed.'
