#mirror.rb

def mirror(array)
  i = 1
  array.length.times do
    array << array[array.length - i]
    i += 2
  end
  return array
end

print mirror([1, 3, 2, 7])
print mirror([1, 3, 2, 7, 8, 9])
