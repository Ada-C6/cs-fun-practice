
# Without each:
#
def stretch(array)
  new_arr = []
  len = array.length
  i = 0

  until i == len
    if array[i] % 2 == 0
      new_arr << array[i] / 2
      new_arr << array[i] / 2
    else
      new_arr << (array[i] / 2) + 1
      new_arr << array[i] / 2
    end
    i +=1
  end
  return new_arr
end

# With each:

# def stretch(array)
#   new_arr = []
#   len = array.length
#   i = 0
#   count = 0
#
#
#   array.each do |num|
#     half = num / 2
#     if num % 2 == 0
#       new_arr << half
#       new_arr << half
#     else
#       new_arr << half + 1
#       new_arr << half
#     end
#   end
#   return new_arr
# end

# should return [9, 9, 4, 3, 2, 2, 12, 12, 6, 5]
puts stretch([18, 7, 4, 24, 11])
