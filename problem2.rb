# def stretch(original_array)
#   stretch_array = []
#
#   original_array.each do | num |
#     if num % 2 == 0
#       num1 = num / 2
#       num2 = num / 2
#     else
#       num1 = (num / 2) + 1
#       num2 = num / 2
#     end
#     stretch_array << num1
#     stretch_array << num2
#   end
#
#   return stretch_array
# end

# def stretch(input)
#   output = []
#
#   input.length.times do | i |
#     split_value = input[i] / 2
#     output << (input[i] % 2 == 0 ? split_value : split_value + 1 )
#
#     # if input[i] % 2 == 0
#     #   output << split_value
#     # else
#     #   output << split_value + 1
#     # end
#
#     output << split_value
#   end
#     return output
# end

def stretch(input)
  output = []
  input.length.times do | i |
    split_value = input[i] / 2
    output[2 * i] = (input[i] % 2 == 0 ? split_value : split_value + 1 )
    output[2 * i + 1 ] = split_value
  end

    return output
end
