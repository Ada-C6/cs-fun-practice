# ## Problem #2
# Write a method named `stretch` that accepts an array of integers as a
# parameter and returns a **new** array twice as large as the original, where
# every integer from the original array is replaced with a pair of integers,
# each half the original.
#
# If a number in the original array is odd, then the first number in the new
# pair should be one higher than the second so that the sum equals the
# original number.
#
# For example, if a variable named list refers to an array storing the
# values [`18, 7, 4, 24, 11]`, the call of `stretch(list)` should return
# a new array containing `[9, 9, 4, 3, 2, 2, 12, 12, 6, 5]`. (The number 18
# is stretched into the pair 9, 9, the number 7 is stretched into 4, 3,
# the number 4 is stretched into 2, 2, the number 24 is stretched into 12,
# 12 and the number 11 is stretched into 6, 5.)

# draft 3: short, ternary, no shovel bc other languages don't have that
def stretch(arr)
  result = []

  arr.length.times do |i|
    result[i * 2] = (arr[i].even? ? arr[i]/2 : (arr[i]/2 + 1))
    result[i * 2 + 1] = arr[i]/2
  end

  return result
end

# # draft 2 (uses shovel)
# def stretch(arr)
#   result = []
#
#   arr.each do |val|
#     result << (val.even? ? val/2 : (val/2 + 1))
#     result << val/2
#   end
#
#   return result
# end

# # draft 1 below
# def stretch(arr)
#   result = []
#   arr.each do |val|
#     if val.even?
#       result << val/2
#       result << val/2
#     else
#       result << (val/2 + 1)
#       result << val/2
#     end
#   end
#   return result
# end
