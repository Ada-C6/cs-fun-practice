def switchpairs(a)

  counter = 0

  while counter < a.length
    if (counter-1) % 2 == 0
      temp = a[counter]
      a[counter] = a[counter-1]
      a[counter-1] = temp
    end
    counter += 1
  end

  return a

end

array1 = ["four", "score", "and", "seven", "years", "ago"]
array2 = ["to", "be", "or", "not", "to", "be", "hamlet"]

print switchpairs(array1)
puts
print switchpairs(array2)
puts
