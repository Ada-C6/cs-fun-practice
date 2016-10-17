# Write a method `switchPairs` that switches the order of values in an Array of strings in a pairwise fashion. Your method should switch the order of the first two values, then switch the order of the next two, switch the order of the next two, and so on.
# If there are an odd number of values in the list, the final element is not moved. Method should switch pairs as usual but the final value, would not be moved.

# EXAMPLE:
# list.length = (even)(6):
# list = ["four", "score", "and", "seven", "years", "ago"]
# should return (if done correctly)
# ["score", "four", "seven", "and", "ago", "years"]

# other wise list.length = (odd)(7)
list = ["four", "score", "and", "seven", "years", "ago", "hamlet"]
# should return (if done correctly)
#["score", "four", "seven", "and", "ago", "years", "hamlet"]

def switched_pairs(list)
  i = 0
  new_list = list.length / 2
  new_list.times do
    first_item = list[i]
    second_item = list[i+1]

    list[i] = second_item
    list[i+1] = first_item
    i +=2
  end
  return list
end

puts switched_pairs(list)

# testing even amount in array
# puts "original list = #{list} & new list = #{switched_pairs(list)}."
# => 'original list = ["four", "score", "and", "seven", "years", "ago"] & new list = ["score", "four", "seven", "and", "ago", "years"].'

#testing odd amount in array
# puts "original list = #{list} & new list = #{switched_pairs(list)}."
# => 'original list = ["four", "score", "and", "seven", "years", "ago", "hamlet"] & new list = ["score", "four", "seven", "and", "ago", "years", "hamlet'
