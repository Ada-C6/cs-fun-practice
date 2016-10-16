# ## Problem #2
# Write a method `switchPairs` that switches the order of values in an Array of strings in a pairwise fashion. Your method should switch the order of the first two values, then switch the order of the next two, switch the order of the next two, and so on. **This switch should happen _in place_, meaning no new array should be created.** For example, if the list initially stores these values: ["four", "score", "and", "seven", "years", "ago"] your method should switch the first pair, "four", "score", the second pair, "and", "seven", and the third pair, "years", "ago", to yield this list: ["score", "four", "seven", "and", "ago", "years"]
#
# If there are an odd number of values in the list, the final element is not moved. For example, if the original list had been: ["to", "be", "or", "not", "to", "be", "hamlet"] It would again switch pairs of values, but the final value, "hamlet" would not be moved, yielding this list: ["be", "to", "not", "or", "be", "to", "hamlet"]

def switchPairs(input)
  # This should work for both even and odd length arrays. In an odd length array, the last index is even, so I've restricted the if statement to only those indicies who are less than one minus the index length. For instance, if input is an array of length 5, the last index is 4, and there's nothing after it to switch it with, so I don't want to transform it. But for an input whose length is 6, the last index is 5. So the last n that is even is 4, and there is something at index 5 to switch with.
  input.length.times do |n|
    if n % 2 == 0 && n < input.length - 1
      placeholder = input[n]
      input[n] = input[n + 1]
      input[n + 1] = placeholder
    end
  end
  return input
end

# some tests to visually check
puts "even input = [a, b, c, d]"
puts "output " + switchPairs(["a", "b", "c", "d"]).to_s

array_length_5 = [1, 2, 3, 4, 5]

switched = switchPairs(array_length_5)

puts "\ninput = [1, 2, 3, 4, 5]"
puts "output " + switched.to_s
puts "switched.length should be 5"
puts "it's #{switched.length}" 

puts "\ninput = [cat, dog, parakeet]"
puts "output " + switchPairs(["cat", "dog", "parakeet"]).to_s

puts "\nwhat happens with an empty array?"
puts switchPairs([]).to_s

puts "\nwhat happens with an array of length 1?"
puts switchPairs([1]).to_s
