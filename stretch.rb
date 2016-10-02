def stretch(list)
  new_list = []

  num = 0
  until num == list.length
    if list[num] % 2 == 0
      new_list += [list[num]/2, list[num]/2]
    else
      new_list += [list[num]/2 + 1, list[num]/2]
    end

    num += 1
  end

  return new_list
end

#Initial solution - used .push & .each, going to get rid of those
# def stretch(list)
#   new_list = []
#
#   list.each do |num|
#     if num % 2 == 0
#       new_num = num/2
#       new_list.push(new_num, new_num)
#     else
#       new_num = (num/2)
#       new_list.push(new_num + 1, new_num)
#     end
#   end
#
#   return new_list
# end

#Next solution - got rid of .push and condensed it a bit, going to get rid of .each
# def stretch(list)
#   new_list = []
#
#   list.each do |num|
#     if num % 2 == 0
#       new_list += [num/2, num/2]
#     else
#       new_list += [num/2 + 1, num/2]
#     end
#   end
#
#   return new_list
# end
