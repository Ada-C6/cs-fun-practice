## Problem #1
def print_array(array_of_integers)
  print array_of_integers
end

## Problem #2
def stretch(array)
  stretch = []
  array.each do |i|
    if i % 2 == 0
      2.times do
        stretch << i / 2
      end
    else
      stretch << (i / 2) + 1
      stretch << (i / 2)
    end
  end
  return stretch
end

## Problem #3
def numUnique(integer_array)
  numbers = {}
  integer_array.each do |input|
    if !numbers.has_key?(input)
      numbers[input] = 1
    end
  end
  return numbers.length
end

## Problem #4
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
