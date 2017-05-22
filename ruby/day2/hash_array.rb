hash = Hash.new("Go Fish")
hash["a"] = 100
hash["b"] = 200
hash["c"] = "300"

puts hash["zzzz"]

keys = hash.keys
puts "Keys: #{keys}"

values = hash.values
puts "Values: #{values}"

array = [1, "two", 3, "forty four"]
new_hash = Hash.new
array.each_with_index  {|each, index| new_hash[index] = each}
puts "New Hash: #{new_hash}"

puts "Original hash"
p hash

puts "Converting hash to array"
p hash.to_a

puts "Flattening hash to array"
p hash.to_a.flatten

reconstruct = hash.to_a.inject(Hash.new) { |memo, pair| memo[pair.first] = pair.last; memo }
puts "Reconstructed array: "
p reconstruct

puts "Iterating through the hash: "
hash["d"] = ['Sid', 'Santo']
hash.each do |key, value|
  puts "#{key}------#{value}"
end
