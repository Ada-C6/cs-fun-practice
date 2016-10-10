# For the problems I'm assuming the input will be an array of various sizes

# Problem 1
def mirror(list)
  iteration = list.length - 1
  new_array = list
  if list == []
    return list
  else
    iteration.times do |i|
      new_array << list[iteration - i]
    end
    new_array << list[0]
    return new_array
  end
end

# Problem 2
def switchPairs(list)
  iteration = list.length - 1
  iteration.times do |i|
    if i % 2 == 0
      first_pair_item = list[i]
      second_pair_item = list[i + 1]
      list[i] = second_pair_item
      list[i + 1] = first_pair_item
    elsif i % 2 == 1
      second_pair_item = list[i + 1]
      list[i + 1] = second_pair_item
    end
  end
  return list
end
