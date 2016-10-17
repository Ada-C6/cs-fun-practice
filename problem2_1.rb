def mirror(array)

  i = (array.length - 1)
  while i >= 0
    array << array[i]
    i -= 1
  end
  return array
end

a = [1, 3, 2, 7]
print mirror(a)
