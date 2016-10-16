# Problem #1
#
# Write a method mirror that returns a new array doubling the size of a list of integers by appending the mirror image of the original sequence to the end of the list. The mirror image is the same sequence of values in reverse order. For example, if a variable called list stores this sequence of values:
#
# [1, 3, 2, 7] and we make the following call:
#
# mirror(list) then it should return the following values after the call:
#
# [1, 3, 2, 7, 7, 2, 3, 1] Notice that it has been doubled in size by having the original sequence appearing in reverse order at the end of the list. You may not make assumptions about how many elements are in the list.


def mirror(numbers_array)
  i = numbers_array.length
  j = -1
  new_array = []

  until i < (j * -1)
    new_array << numbers_array[j]
    j -= 1
  end

  numbers_array = numbers_array + new_array
  return numbers_array

end

print mirror([2, 0, 5, 7, 10])


# Problem #2
#
# Write a method switchPairs that switches the order of values in an Array of strings in a pairwise fashion. Your method should switch the order of the first two values, then switch the order of the next two, switch the order of the next two, and so on. This switch should happen in place, meaning no new array should be created. For example, if the list initially stores these values: ["four", "score", "and", "seven", "years", "ago"] your method should switch the first pair, "four", "score", the second pair, "and", "seven", and the third pair, "years", "ago", to yield this list: ["score", "four", "seven", "and", "ago", "years"]
#
# If there are an odd number of values in the list, the final element is not moved. For example, if the original list had been: ["to", "be", "or", "not", "to", "be", "hamlet"] It would again switch pairs of values, but the final value, "hamlet" would not be moved, yielding this list: ["be", "to", "not", "or", "be", "to", "hamlet"]

def switchPairs(string_array)
  i = 0
  # string1 = ""
  if string_array.length % 2 == 0
    until i == string_array.length
      string_array[i], string_array[i+1] =
      string_array[i+1], string_array[i]
      i+=2
    end
  else
    until i == string_array.length - 1
      string_array[i], string_array[i+1] =
      string_array[i+1], string_array[i]
      i+=2
    end
  end

  return string_array
end


print switchPairs(["and", "the", "cat", "ate", "his", "hat"])
print switchPairs(["and", "the", "cat", "ate", "his", "hat", "rats"])
