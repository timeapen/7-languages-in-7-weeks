x = {"hello" => "world", this: {"apple" => 4, tastes: "delicious"}}

require 'json'
puts x.to_json
# {"hello":"world","this":{"apple":4,"tastes":"delicious"}}

puts JSON.pretty_generate( x )
