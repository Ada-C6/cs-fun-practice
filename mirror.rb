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

def mirror(input)
  # output array starts with the input array first.
  output = input

  # I want to go through each of the items in input and add them at the end of the output array, starting with the last element of output. I know that my output array will be twice the length of the input, but because indexing starts at 0, the last element of the output will be at 1 less than the length.
  output_index = input.length * 2 - 1

  # for each element in the input array, I'm going to set the output at the index to the element in the input array, and then decrease the output_index by 1.
  input.length.times do |n|
    output[output_index] = input[n]
    output_index -= 1
  end

  return output
end

# some tests.
m = mirror([1,2,3])
puts m.to_s

one = mirror([10])
puts one.to_s

# array does not need to be an array of integers.
things = mirror(["cat", "dog", "mouse", "horse", "cockatoo"])
puts things.to_s
