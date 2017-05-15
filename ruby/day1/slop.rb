require 'slop'

opts = Slop.parse do |o|
  o.string '-h', '--host', 'hostname'
  o.int '-p', '--port', 'port (default: 80)', default: 80
  o.string '--username'
  o.separator ''
  o.separator 'other options:'
  o.bool '--quiet', 'suppress output'
  o.on '-v', '--version' do
    puts "1.1.1"
  end
  o.on '--help' do
    puts o
    exit
  end
  o.on '--debug' do
    puts o.to_hash
  end
end

puts "Here are your parsed options"
puts opts.to_hash

