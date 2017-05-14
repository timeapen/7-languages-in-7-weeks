# Accessing file without code block
f = File.open('War and Peace No Block.txt', 'w')
f << "Well, Prince, so Genoa and Lucca"
f << " are now just family estates of the Buonapartes."

# Remember to close the file!  Otherwise resource leak, until the script ends.
f.close

puts IO.read("War and Peace No Block.txt")

# Accessing file with code block
# File handling scoped in the code block; Ruby closes file handle automatically
File.open('War and Peace Block.txt', 'w') do |f|
  f << "Well, Prince, so Genoa and Lucca"
  f << " are now just family estates of the Buonapartes."
end


puts IO.read("War and Peace Block.txt")
