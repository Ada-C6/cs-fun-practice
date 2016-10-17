# CS Fundamentals Practice #2
#
# For each of the following problems, you should write a single method to solve
# the problem. You will be working with arrays in each problem, but should use
# array indexing and loops to solve the problems. You should **not** utilize
# any [Ruby Array methods](https://ruby-doc.org/core-2.2.0/Array.html), with
# the exception of `<<`, `[]`, and `.length`.

## Problem #1
# Write a method `mirror` that returns a **new array** doubling the size of a list of integers by appending the mirror image of the original sequence to the end of the list. The mirror image is the same sequence of values in reverse order. For example, if a variable called list stores this sequence of values:
#
# [1, 3, 2, 7]
# and we make the following call:
#
# mirror(list)
# then it should return the following values after the call:
#
# [1, 3, 2, 7, 7, 2, 3, 1]
# Notice that it has been doubled in size by having the original sequence appearing in reverse order at the end of the list. You may not make assumptions about how many elements are in the list.


def mirror(array)
  new_array = []

  array.length.times do |item|
    new_array << array[item]
  end

  array.length.times do |item|
    new_array << array[-1-item]
  end

  return new_array

end

# array = [1,3,2,7]
# print mirror(array)
