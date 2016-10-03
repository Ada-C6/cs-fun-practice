# This method takes a SORTED array of integers as input and returns the number of unique walues in input array, using a hash.

def numUnique(array)
  h = {}

  for num in array
    h[num] = true
  end
  return h.length
end

puts numUnique [5, 7, 7, 7, 8, 22, 22, 23, 31, 35, 35, 40, 40, 40, 41]
