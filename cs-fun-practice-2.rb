# CS Fundamentals Practice #2 - 2016.10.16
#
# For each of the following problems, you should write a single method to solve the problem. You will be working with arrays in each problem, but should use array indexing and loops to solve the problems. You should not utilize any Ruby Array methods, with the exception of <<, [], and .length.



# Problem #1

def mirror(list)
    mirrored_list = list
    i = list.length - 1

    list.length.times do
        mirrored_list << list[i]
        i -= 1
    end

    return mirrored_list
end

# Problem #1
#
# Write a method mirror that returns a new array doubling the size of a list of integers by appending the mirror image of the original sequence to the end of the list. The mirror image is the same sequence of values in reverse order. For example, if a variable called list stores this sequence of values:
#
# [1, 3, 2, 7] and we make the following call:
#
# mirror(list) then it should return the following values after the call:
#
# [1, 3, 2, 7, 7, 2, 3, 1] Notice that it has been doubled in size by having the original sequence appearing in reverse order at the end of the list. You may not make assumptions about how many elements are in the list.

puts "Problem #1... testing_list = [1, 3, 2, 7]"
test_list = [1, 3, 2, 7]
puts mirror(test_list).to_s



# Problem #2

def switchPairs(list)
    num_switches = list.length / 2

    # two iterator variables:
    i = 0
    j = 1

    num_switches.times do
        placeholder_1 = list[i]
        placeholder_2 = list[j]

        list[i] = placeholder_2
        list[j] = placeholder_1

        i += 2
        j += 2
    end

    return list
end

# Problem #2
#
# Write a method switchPairs that switches the order of values in an Array of strings in a pairwise fashion. Your method should switch the order of the first two values, then switch the order of the next two, switch the order of the next two, and so on. This switch should happen in place, meaning no new array should be created. For example, if the list initially stores these values: ["four", "score", "and", "seven", "years", "ago"] your method should switch the first pair, "four", "score", the second pair, "and", "seven", and the third pair, "years", "ago", to yield this list: ["score", "four", "seven", "and", "ago", "years"]
#
# If there are an odd number of values in the list, the final element is not moved. For example, if the original list had been: ["to", "be", "or", "not", "to", "be", "hamlet"] It would again switch pairs of values, but the final value, "hamlet" would not be moved, yielding this list: ["be", "to", "not", "or", "be", "to", "hamlet"]

puts "Problem #2... odd_item_test_list = ['a', 'b', 'c', 'd', 'e', 'f', 'g']"
test_list = ["a", "b", "c", "d", "e", "f", "g"]
puts switchPairs(test_list).to_s
puts "Problem #2... even_item_test_list = ['a', 'b', 'c', 'd', 'e', 'f']"
test_list2 = ["a", "b", "c", "d", "e", "f"]
puts switchPairs(test_list2).to_s
puts "Problem #2... one_item_test_list = ['a']"
test_list3 = ["a"]
puts switchPairs(test_list3).to_s
