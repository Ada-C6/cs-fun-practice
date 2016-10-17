############## Problem #1 - Print an array ##############
def print_array(list)
  if list.length == 0
    puts "This is an empty array."
  else
    print "["
    print_arr(list)
  end
end

def print_arr(list)
  if list.length == 1
    print list[0]
    puts "]"
  else
    newlist = list[1, list.length-1]
    print list[0]
    print ", "
    print_arr(newlist)
  end
end

############## Test cases for problem 1 ##############

print_array([1, 2, 3, 4, 5])
print_array([1])
print_array(arr=[])


############# Problem #2 - split the elements in an array ##########
def stretch(list)
  if list.length == 0
    puts "This is an empty array"
  else
    print "["
    stretch_array(list)
  end
end

def stretch_array(list)
  if list.length == 1
    if list[0]% 2 == 0
      print (list[0]/2).to_i
      print ", "
      print (list[0]/2).to_i
      puts "]"
    else
      print (list[0]/2).to_i + 1
      print ", "
      print (list[0]/2).to_i
      puts "]"
    end
  else
    if list[0]% 2 == 0
      print (list[0]/2).to_i
      print ", "
      print (list[0]/2).to_i
      print ", "
    else
      print (list[0]/2).to_i + 1
      print ", "
      print (list[0]/2).to_i
      print ", "
    end
    stretch_array(list[1, list.length-1])
  end
end

### OR ###

# def stretch_array(list)
#   if list.length == 1
#     print (list[0]/2).to_i + list[0]%2
#     print ", "
#     print (list[0]/2).to_i
#     puts "]"
#   else
#     print (list[0]/2).to_i + list[0]%2
#     print ", "
#     print (list[0]/2).to_i
#     print ", "
#   end
#   stretch_array(list[1, list.length-1])
# end

########## test cases - problem 2 ##########
stretch ([18, 7, 4])
stretch ([15])
stretch (arr=[])
