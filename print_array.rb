def print(list)
  array_as_string = "["
  (0..list.length).each do |i|
    array_as_string += list[i].to_s + ", "
  end
  array_as_string += list[-1].to_s + "]"
  return array_as_string
end

list = [3, 19, 27, 4, 98, 304, -9, 72]
print(list)

print list
