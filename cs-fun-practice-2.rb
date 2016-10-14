#Problem 1
def mirror(list)
  new_array = []

  num = list.length - 1

  until num == -1 do
    new_array << list[num]
    num -= 1
  end

  final_array = list + new_array

  return final_array
end

#Problem 2
def switchPairs(array)
  counter = 0
  num = array.length/2

  num.times do
    array[counter], array[counter+1] = array[counter+1], array[counter]
    counter += 2
  end

  return array
end
