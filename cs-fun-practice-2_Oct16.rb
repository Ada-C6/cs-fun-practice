# Problem 1: Write a method mirror that returns a new array doubling the size of a list of integers by appending the mirror image of the original sequence to the end of the list.

def mirror(arr)
  i = arr.length - 1
  final_arr = arr
  while i >= 0
    final_arr << arr[i]
    i -= 1
  end
  return final_arr
end

arr = [1, 3, 2, 7]
puts mirror(arr)

arr1 = [1, 3, 5, 7, 9]
puts mirror(arr1)

# Problem 2: Write a method switchPairs that switches the order of values in an Array of strings in a pairwise fashion.

def switchPairs(arr)
  len = arr.length
  i = 0
  while i < (len - 1) #this works for both odd and even lengths.
    a = arr[i]
    arr[i] = arr[i+1]
    arr[i+1] = a
    i += 2
  end
  return arr
end

arr = ["four", "score", "and", "seven", "years", "ago"]
puts switchPairs(arr)

arr2 = ["to", "be", "or", "not", "to", "be", "hamlet"]
puts switchPairs(arr2)
