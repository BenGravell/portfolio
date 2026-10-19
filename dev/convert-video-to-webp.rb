require 'optparse'

options = { width: 960, fps: 20, quality: 75, compression: 6, loop: 0 }
parser = OptionParser.new do |opts|
  opts.banner = 'Usage: ruby dev/convert-video-to-webp.rb [options] input-video [output.webp]'
  options.each_key do |key|
    opts.on("--#{key} NUMBER", Integer, "Default: #{options[key]}") { |value| options[key] = value }
  end
end
begin
  parser.parse!
rescue OptionParser::ParseError => e
  abort "#{e.message}\n#{parser}"
end
abort parser.to_s unless (1..2).cover?(ARGV.size)
abort 'Width and FPS must be positive; quality 0–100; compression 0–6; loop nonnegative.' unless
  options[:width].positive? && options[:fps].positive? && (0..100).cover?(options[:quality]) &&
  (0..6).cover?(options[:compression]) && options[:loop] >= 0

input = File.expand_path(ARGV[0])
output = File.expand_path(ARGV[1] || input.sub(/\.[^.\/\\]+\z/, '') + '.webp')
abort "Input not found: #{input}" unless File.file?(input)
abort 'Input and output must be different files.' if input == output || (File.exist?(output) && File.identical?(input, output))

puts "Converting #{input} -> #{output}"
success = system('ffmpeg', '-hide_banner', '-y', '-i', input,
                 '-vcodec', 'libwebp_anim',
                 '-filter:v', "fps=fps=#{options[:fps]},scale=#{options[:width]}:-1:flags=lanczos",
                 '-lossless', '0', '-compression_level', options[:compression].to_s,
                 '-q:v', options[:quality].to_s, '-preset', 'picture',
                 '-loop', options[:loop].to_s, '-an', '-vsync', '0', output)
abort(success.nil? ? 'FFmpeg not found on PATH.' : 'FFmpeg conversion failed.') unless success
puts "Done: #{output} (#{File.size(output)} bytes)"
