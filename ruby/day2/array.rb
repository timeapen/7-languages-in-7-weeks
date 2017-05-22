array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16]

p "Each ************************"

array2 = [*(1..16)]
array2.each {|num|
  p array2[(num-4)...num] if num % 4 == 0
}

p "Slicing ************************"

array2.each_slice(4) { |slice| p slice}

p "More robust; not depending on array values ************************"

array3 = [1, 3, 4, 5, 6, 3, 7, 8, 9, 89, 45, 2, 45, 21, 8, 9]
i = 1
array3.each {|num|
  ## notice the difference between (i-4)...i and (i-4)..i; inclusive vs exclusive
  p array3[(i-4)..i] if i % 4 == 0
  i += 1
}
