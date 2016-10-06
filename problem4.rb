# This method takes a SORTED array of integers as input and returns the number of unique values in input array, using a hash.

def numUnique2(array)

  #handle empty array
  if array.length == 0
    return 0
  end

  #there is always at least one unique number in a nonempty array of fixnums
  count = 1
  i = 0
  j = 1

  #this while loop will run with a minimum f 2 elements in array
  while j < array.length
    if array[i] != array[j]
      count += 1
    end

    i += 1
    j += 1

  end
  
  return count
end
