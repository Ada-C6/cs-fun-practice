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
