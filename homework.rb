########## CS-FUN-PRACTICE-2 ##########
def mirror(input)
  output = []

  input.count.times do |i|
    output << input[i]
  end

  input.count.times do |i|
    output << input[-1 - i]
  end

  return output
end

def switchpairs(input)
  if input.count % 2 == 0
    input.count.times do |num|
      if num % 2 == 0
        input[num], input[num + 1] = input[num + 1], input[num]
      end
    end
  else
    input.count.times do |num|
      if num % 2 == 0
        input[num], input[num + 1] = input[num + 1], input[num]
      end
    end

    input[-2] = input[-1]

    return input[0...input.count - 1]
  end

  return input
end

########## CS-FUN-PRACTICE-1 ##########

# My solution a.k.a. the wrong way
#
# def stretch(array)
#   b = []
#
#   array.each do |num|
#     if num % 2 == 0
#       2.times do
#         b << num / 2
#       end
#     else
#       b << num - (num / 2)
#       b << num / 2
#     end
#   end
#
#   return b
#
# end

def stretch(input)
  output = []


  input.length.times do |i|
    split_val = input[i] / 2

    if input[i] % 2 == 0
      output << split_val
    else
      output << split_val + 1
    end

    output << split_val
  end

  return output
end
