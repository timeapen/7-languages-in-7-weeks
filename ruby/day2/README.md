# Day 2 Exercises

1. Find out how to access files with and without code blocks. What is the benefit of the code block?

   See [file_access.rb](file_access.rb) for solution.  Using a code block allows an nice abstraction for file access in Ruby.  

   File related code is scoped within the code block and Ruby will automatically close the file handle after the block is executed avoiding resource leaks.

1. How would you translate a hash to an array? Can you translate arrays to hashes?
