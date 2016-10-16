# Write a method `mirror` that returns a **new array** doubling the size of a list of integers by appending the mirror image of the original sequence to the end of the list. The mirror image is the same sequence of values in reverse order.
#example if a variable called list stores a sequence of values
# only .length and .times can be used.

# list = [1, 2, 3, 4] and we make the following call:
# mirror(list) then it should return the following values afte.
# [ orginal    | + orginal reversed]
# [1, 2, 3, 4, 4, 4, 3, 2, 1]

# I want to take the index values of one array
      #[0,1,2,3]
list = [1,2,3,4]

def mirror(list)
  if list ! nil
    new_array = []
    num = list.length

    num.times do |i|
      new_array << list[i]
      i += 1
    end
    num.times do |i|
      i += 1
      new_array << list[-i]
    end
    return new_array
  end
end

puts "The orginal array = #{list}. However, when we call method mirror on list. mirror(list) it returns #{mirror(list)}"
