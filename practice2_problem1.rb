def mirror(array)
  mirror_array = []
  array.length.times do |i|
    mirror_array << array[i]
  end
  array.length.times do |i|
    mirror_array << array[(i+1)*-1]
  end
  return mirror_array
end

# try =  mirror([3, 5, 6, 3, 2, 1, 5])
# print try
