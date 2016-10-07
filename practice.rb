## Problem #1
def print_array(array_of_integers)
  print array_of_integers
end

## Problem #2
def stretch(input)
  output = []
  input.length.times do |i|
    split_value = input[i] / 2
    # Ternary operator: 3 pieces -
    # conditional (input[i] % 2 == 0)
    # ?
    # what you do if true (split_value) and what you do if false (split_value + 1)
    # Other languages don't have a shovel, so doing this, instead
    output[2 * i] = (input[i] % 2 == 0 ? split_value : split_value + 1)
    output[2 * i + 1] = split_value
  end
  return output
end

## Problem #3
def numUnique(integer_array)
  numbers = {}
  integer_array.each do |input|
    if !numbers.has_key?(input)
      numbers[input] = 1
    else
      numbers[input] += 1
    end
  end
  return numbers.length
end

## Problem #4
# Maddie's approach:
# def numUnique2(list)
#   distinct = 0
#   index = 0
#   list.each do |item|
#     if item != list[(index - 1)]
#       distinct += 1
#     end
#     index += 1
#   end
#   return distinct
# end

def numUnique2(input)
  counter = 1
  number = input[0]
  if input.length == 0
    counter = 0
  end
  input.length.times do |i|
    if input[i] == number
      i += 1
    else
      counter += 1
      number = input[i]
      i += 1
    end
  end
  return counter
end
