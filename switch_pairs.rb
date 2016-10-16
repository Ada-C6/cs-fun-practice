def switch_pairs(list)
  i = 0

  while i < list.length - 1
    placeholder = list[i]
    list[i] = list[i+1]
    list[i+1] = placeholder
    i+=2
  end

  return list
end


hamlet = ["to", "be", "or", "not", "to", "be", "hamlet"]
gettysburg = ["four", "score", "and", "seven", "years", "ago"]

puts "Hamlet: (odd)"
switch_pairs(hamlet)
puts hamlet
puts "Gettysburg: (even)"
switch_pairs(gettysburg)
puts gettysburg
