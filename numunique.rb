# ## Problem #3
# Write a method named `numUnique` that accepts a sorted array of integers
# as a parameter and **utilizes a hash to** calculate and return the number of
# unique values in the array. The array is guaranteed to be in sorted order,
# which means that duplicates will be grouped together.
#
# For example, if a variable called list stores the following values:
# `list = [5, 7, 7, 7, 8, 22, 22, 23, 31, 35, 35, 40, 40, 40, 41]`
# then the call of `numUnique(list)` should return **9**
# because this list has 9 unique values (5, 7, 8, 22, 23, 31, 35, 40 and 41).
#
# It is possible that the list might not have any duplicates. For example if
# list instead stored this sequence of values:
# `list = [1, 2, 11, 17, 19, 20, 23, 24, 25, 26, 31, 34, 37, 40, 41]`
# Then a call on the method would return **15**
# because this list contains 15 different values.
#
# If passed an empty list, your method should return **0**.

def numUnique(array)
  numbers_count = {}
  length = array.length
  length.times do |i|
    if numbers_count[array[i]]
      numbers_count[array[i]] += 1
    else
      numbers_count[array[i]] = 1
    end
  end
  puts numbers_count
  return numbers_count.length
end


# ## Problem #4
# Write a method named `numUnique2` that functions the same as `numUnique`
# except that it **does NOT use a hash** to solve the problem. In this version,
# you should only iterate over the array, but **use no auxiliary storage**
# outside of fixnum variables, if needed.
#
# Remember that you can assume that the values in the array appear in
# sorted (nondecreasing) order.

def numUnique2(array)
  unique = 0
  length = array.length
  length.times do |i|
    if array[i] != array[i + 1]
      unique += 1
    end
  end
  return unique
end
