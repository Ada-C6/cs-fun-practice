
def print_array(array)

  # Determine length of array without using .length

  length = 0

  for element in array
    length += 1
  end

  string_rep = ""

  string_rep << "["

  counter = 0

  for element in array
    string_rep << element.to_s
    if counter < length-1
      string_rep << ", "
    end
    counter += 1
  end

  string_rep << "]"

  puts string_rep

end

# Note: Ruby reliably truncates integers during integer division. This is the
# basis of how odd integers are treated.

def stretch(array)

  stretched_array = []

  for element in array
    if element % 2 == 0
      stretched_array << element/2
      stretched_array << element/2
    else
      stretched_array << element/2 + 1
      stretched_array << element/2
    end
  end

  return stretched_array

end

def numUnique2(array)

  uniques = 0
  counter = 0

  for element in array
    if counter == 0
      uniques += 1
    else
      if array[counter-1] != element
        uniques +=1
      end
    end

    counter += 1

  end

  return uniques

end

# I made this also collect the number of instances of each unique element, because
# otherwise I couldn't see why you'd want to use a hash to solve this problem.

def numUnique(array)

  uniques = {}
  counter = 0

  for element in array
    if uniques[element]
      uniques[element] = uniques[element] + 1
    else
      uniques[element] = 1
    end
  end

  count_uniques = 0

  for element in uniques
    count_uniques += 1
  end

  return count_uniques

end

# Testing print_array method

array = [3, 19, 27, 4, 98, 304, -9, 72]
print_array(array)

# Testing stretch method

array1 = [18, 7, 4, 24, 11]
print_array(stretch(array1))

# Testing numUnique2 method

puts "Using numUnique2:"
array2 = [5, 7, 7, 7, 8, 22, 22, 23, 31, 35, 35, 40, 40, 40, 41]
puts "Num unique in array 2: #{numUnique2(array2)}"
array3 = [1, 2, 11, 17, 19, 20, 23, 24, 25, 26, 31, 34, 37, 40, 41]
puts "Num unique in array 3: #{numUnique2(array3)}"
array4 = []
puts "Num unique in array 4: #{numUnique2(array4)}"

# Testing numUnique method
puts "Using numUnique:"
puts "Num unique in array 2: #{numUnique(array2)}"
puts "Num unique in array 3: #{numUnique(array3)}"
puts "Num unique in array 4: #{numUnique(array4)}"
