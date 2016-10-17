def switchPairs(array)

  i = 0
  while i < (array.length - 2)
    temp = array[i]
    array[i] = array[i+1]
    array[i+1] = temp
    i += 2
  end
  return array
end

a = ["to", "be", "or", "not", "to", "be", "hamlet"]

print switchPairs(a)
