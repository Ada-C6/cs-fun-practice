# This felt like cheating:

# def print_array(array)
#   print array
# end


# So I did this instead:


def print_array(array)
  output = ""

  #fencepost
  output += "["

  i = 0
  while i < array.length - 2
    output += (array[i].to_s + ", ")
    i += 1
  end
  output += (array[i].to_s + "]") # i is last index
  puts output

end
