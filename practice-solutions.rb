# def stretch(arr)
#   list = []
#
#   arr.each do |a|
#     if a % 2 == 0
#       2.times do
#         list << a/2
#       end
#     else
#       list << (a/2) + 1
#       list << a/2
#     end
#
#   end
#   return list
# end
#


#live code solution

def stretch(input)
  output = []
  input.length.times do |i| #i is the index/counter at 0, so must do input[i] to test the value at the index
  split_value = input[i] / 2

  #ternary operator
  output[2 * i] = (input[i] % 2 == 0 ? split_value : split_value + 1)
  # if input[i] % 2 == 0
  #   output << split_value
  # else
  #   split_value = input[i] / 2
  #   output << split_value + 1
  # end
    output[2 * i + 1] = split_value
end
  return output
end
