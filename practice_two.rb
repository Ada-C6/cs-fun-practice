def mirror(list)
# list + backwards_list = mirrored_list
  backwards_list = []
  index = list.length

# index over each item in the list, backwards!
  until backwards_list.length == list.length do
    index -= 1
    backwards_list << list[index]
  end

# now count back up to add the items from backwards_list to the end of list
  until index == backwards_list.length do
    list << backwards_list[index]
    index += 1
  end

# mirrored list
  list

end


def switchPairs(list)
# index over the array but incement by two since it is pairs
# switch must happen in place
# do not switch if at the end of the array (aka the array is odd) -- the last "pairee"'s value will be nil

  index = 0

  until index == list.length do
    item1 = list[index]
    item2 = list[index + 1]

    unless item2 == nil

      list[index] = item2
      list[index + 1] = item1

      index += 2
    end
# need to return here to break the loop of odd case -
# in that case we skip the step of adding to index
# length will never be equal to index.
# Does not affect even case.
    return list
  end
end
