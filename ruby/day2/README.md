# Day 2 Exercises

## Find

1. Find out how to access files with and without code blocks. What is the benefit of the code block?

   See [file_access.rb](file_access.rb) for solution.  Using a code block allows an nice abstraction for file access in Ruby.  

   File related code is scoped within the code block and Ruby will automatically close the file handle after the block is executed avoiding resource leaks.

1. How would you translate a hash to an array? Can you translate arrays to hashes?

   See [hash_array.rb](hash_array.rb) for solution.

1. You can use Ruby arrays as stacks. What other common data structures to arrays support?

   - Lists
   - Queues
   - Sets
   - Multi-dimensional arrays

   See [data_structures.rb](data_structures.rb) for examples.

## Do
1. Print the contents of an array of sixteen numbers, four numbers at a time, using just each. Now, do the same with each_slice in `Enumerable`

   See [array.rb](array.rb) for examples.
