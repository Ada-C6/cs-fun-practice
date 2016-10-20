
#################
### Problem 1 ###
#################

### Must be a new array

def mirror(array)
  new_array = []

  array.each {|index| new_array << index }

  i = 1
  array.length.times do
    new_array << array[array.length - i]
    i += 2
  end

  return new_array
end





#################
### Problem 2 ###
#################

### Must be a same array

def switch_pairs(array)
  if array.length <= 1
    return array
  else
    (array[0],array[1] = array[1],array[0]) + switch_pairs(array[2..-1])
  end
end







#############
### Tests ###
#############


raise 'switch_pairs broke - switch_pairs(["four", "score", "and", "seven", "years", "ago"])' unless switch_pairs(["four", "score", "and", "seven", "years", "ago"]) == ["score", "four", "seven", "and", "ago", "years"]
raise 'switch_pairs broke - switch_pairs({["to", "be", "or", "not", "to", "be", "hamlet"]})' unless switch_pairs(["to", "be", "or", "not", "to", "be", "hamlet"]) == ["be", "to", "not", "or", "be", "to", "hamlet"]
raise "switch_pairs broke - switch_pairs({[]})" unless switch_pairs([]) == []
raise "switch_pairs broke - switch_pairs({['yay']})" unless switch_pairs(['yay']) == ['yay']
puts "passes all switch_pairs tests"


raise "mirror broke - mirror([1, 3, 2, 7])" unless mirror([1, 3, 2, 7]) == [1, 3, 2, 7, 7, 2, 3, 1]
raise "mirror broke - mirror({[4, 5, 3]})" unless mirror([1, 2]) == [1, 2, 2, 1]
raise "mirror broke - mirror({[]})" unless mirror([]) == []
raise "mirror broke - mirror({[0]})" unless mirror([0]) == [0, 0]
puts "passes all mirror tests"

puts "All tests passed"
