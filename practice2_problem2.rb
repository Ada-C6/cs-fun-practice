def switch_pairs(array)
  switched_array = []
  (array.length/2).times do |i|
    switched_array << array[2*i + 1]
    switched_array << array[2*i]
  end
  if array.length % 2 == 1
    switched_array << array[-1]
  end
  return switched_array
end


# try = switch_pairs([1, 2, 3, 4, 5, 6, 7])
# print try
# try2 = switch_pairs([1, 2, 3, 4])
# print try2
