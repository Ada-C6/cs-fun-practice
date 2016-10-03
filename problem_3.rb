# This method takes a SORTED array of integers as input and returns the number of unique values in input array, using a hash.

def numUnique(array)
  h = {}

  for num in array
    h[num] = true
  end
  return h.length
end
