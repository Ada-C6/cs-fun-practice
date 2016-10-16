def mirror(list)
  result = []
  (list.length).times do |i|
    result << list[i]
  end

  index = -1
  (list.length).times do
    result << list[index]
    index -= 1
  end

  return result
end
