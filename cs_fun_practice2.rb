# Write a method `mirror` that returns a **new array** doubling the size of a list of integers by appending the mirror image of the original sequence to the end of the list. The mirror image is the same sequence of values in reverse order.
#example if a variable called list stores a sequence of values
# only .length and .times can be used.

# list = [1, 2, 3, 4] and we make the following call:
# mirror(list) then it should return the following values afte.
# [ orginal    | + orginal reversed]
# [1, 2, 3, 4, 4, 4, 3, 2, 1]

# This will still work with whatever array list is given. I choose to assume a small array for the purpose of checking.
# I noticed others added a validation for making sure arguments/params provided weren't empty.

list = [1,2,3,6]

def mirror(list)
  # create a variable in which to store value
    new_array = []
  # num will now store the total length of the given array
  # In this iteration: 4
    num = list.length
    # loop through given array for the indexed length.
    num.times do |i|
      # store those values at new_array.
      # [1,2,3,6]
      new_array << list[i]
      i += 1
    end
    num.times do |i|
      # loop through array again but start from end of index
      i += 1
      # store them with the previously stored data.
      new_array << list[-i]
    end
    return new_array
end

puts "The orginal array = #{list}. However, when we call the method mirror on list: mirror(list) it returns #{mirror(list)}"

# Predict mirror(list) will return => [][1, 2, 3, 6, 6, 3, 2, 1]
