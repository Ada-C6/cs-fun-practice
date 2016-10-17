def mirror(list)
# because we must return a **new array**
  mirrored_list = []
  index = 0

# Index from left to right
  until index == list.length do
    mirrored_list << list[index]
    index += 1
  end

# index over each item in the list, backwards! (right to left)
  until index == 0 do
    index -= 1
    mirrored_list << list[index]
  end

  mirrored_list

end


def switchPairs(list)
# Index over the array
  index = 0

# must end if index is equal to length - 1 due to index
# starting at 0. Prevents switch with nil value not in array
  until index >= list.length - 1 do

# switch must happen in place
    item1 = list[index]
    item2 = list[index + 1]

    list[index] = item2
    list[index + 1] = item1
# Increment by two since it is pairs
    index += 2

  end

  list
end
