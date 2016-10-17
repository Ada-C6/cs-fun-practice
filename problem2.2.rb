# CS Fundamentals Practice #2

# For each of the following problems, you should write a single method to solve
# the problem. You will be working with arrays in each problem, but should use
# array indexing and loops to solve the problems. You should **not** utilize
# any [Ruby Array methods](https://ruby-doc.org/core-2.2.0/Array.html), with
# the exception of `<<`, `[]`, and `.length`.
#
# ## Problem #2
# Write a method `switchPairs` that switches the order of values in an Array of strings in a pairwise fashion. Your method should switch the order of the first two values, then switch the order of the next two, switch the order of the next two, and so on. **This switch should happen _in place_, meaning no new array should be created.** For example, if the list initially stores these values: ["four", "score", "and", "seven", "years", "ago"] your method should switch the first pair, "four", "score", the second pair, "and", "seven", and the third pair, "years", "ago", to yield this list: ["score", "four", "seven", "and", "ago", "years"]
#
# If there are an odd number of values in the list, the final element is not moved. For example, if the original list had been: ["to", "be", "or", "not", "to", "be", "hamlet"] It would again switch pairs of values, but the final value, "hamlet" would not be moved, yielding this list: ["be", "to", "not", "or", "be", "to", "hamlet"]


def switch_pairs(array)

  if array.length % 2 == 0
    array.length.times do |index|
      if index % 2 == 0
        array[index], array[index + 1] = array[index + 1], array[index]
      end
    end
  else
    array.length.times do |index|
      if index % 2 == 0
        array[index], array[index + 1] = array[index + 1], array[index]
      end
    end
    array[-2] = array[-1] # originally reversed these and got nil
    return array[0...- 1]
  end
  return array
end

array = ["1", "2", "3", "4", "5"]
print switch_pairs(array)
