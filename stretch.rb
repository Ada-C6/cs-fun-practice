def stretch(input)
  output = []
  # until output.length == input.length * 2
  input.length.times do |i|
    split_value = input[i]/2
    output[2 * i] = input[i] - split_value
    output[2 * i + 1] = split_value
  end
  return output
end
#
# 0 1
# 2 3
# 4 5
# 6 7
# 8 9


# output << (input[i] % 2 == 0 ? split_value : split_value + 1) ternary operator, note importance of paranthesis

# def stretch(array)
#   results = []
#   array.each do |num|
#     small = num/2
#     big = num - small
#     results << big
#     results << small
#   end
#   return results
# end
