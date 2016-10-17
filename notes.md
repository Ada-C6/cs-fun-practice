# Things Learned + Questions or general notes:
## problem # 1
  1. I realized that my first instinct was to solve these questions with Ruby Enums. I admit these types of problems feel unfamiliar as I'm eager to solve them but not sure where to even begin when I can't simply call, "list.reverse" then just add that back to orginal array.

  2. Realize the question itself is asking us to create what I like to think of as an "Any-Array" type of solution. As in it should be able to work with various different array values.

  3. I established (like Rails fixtures) that I would hypothetically work with a predefined array in order to predict behavior and alter as needed. Example:
  list = [1,2,3,6]. I knew my outcome should be: [1,2,3,6,6,3,6]



```
<!-- # early iteration:
# reflection: this is the start of what I want...Yet I need to ensure it continues to happen each time and for length of array.

# detail: created method below to test ideas upon what achieving requirements might look like. I can see that this is only the first step.

# I need a way to do add the rest of array elements for  amount of values I'm looking for. Could I use unless here or until? -->

array = [1,2,3,6]
# list.length
# 4
def mirror(list)
    # store the length of the given array, (i.e. 4)
 	digit = list.length
    # save the value of array list minus 1, (i.e. 3)
	index_end = digit -1
  # things will now be stored in num
  # so the num 6, is now stored in num
    # without enums, how can I loop through?
    # answer: .times do |x|
  num = list.at(index_start)
    # soo add that newly acquired number to the end of list
	list << num
	 puts "list is now: #{list}"
	return list
end
mirror(array)

# returns [1,2,3,6,6]

```

# Experiments:
```
# digits = Array(0..4)
# puts "#{digits}"
# # => [0,1,2,3,4]

# Array = [1,2,3]
# def mirror(list)
# 	digits = Array(o..list.length)
# 	puts "#{digits}"
# end
```
## problem # 2
1. Found this problem oddly familiar and difficult. Tried to use similar reasoning to create a working method.

Early Iteration:
```
# original: ["four", "score", "and", "seven", "years", "ago"]

# should look like:
# aftermath: ["score","four", "seven", "and", "ago", "years"]
# Even without reading the rest of problem. I know that I'll need to have a different procedure for an array with odd amount of items vs. even.
# in description of problem. If there is an odd number, just tack the ending on to end of array wihtout doing the switch.
# **This switch should happen _in place_, meaning no new array should be created.** that seems unlike what I was attempting previously.

list = ["four", "score", "and", "seven", "years", "ago"]
 # list length = even (6)


def switch_pairs(list)
	# test to see if amount of array is even?
		num = list.length

		if num % 2 == 0

			num.times do |i|
				first_item = list[i]
				second_item = list[i + 1]

				list[i] = second_item
				list[i+1] = first_item
				i += 2
			end
		end
	return list
end


switch_pairs(list)

 # predict/Should return : "score", "four", "seven", "and", "ago", "years"
 # I'm getting : ["score", "and", "seven", "years", "ago", nil, "four"]

#  other configurations:
# getting back
 # ["score", "four",  "and", "seven", "years", "ago"]
	# [correct, correct, WRONG, correct, WRONG, WRONG]
```
2. Again, this problem was solved but I'm assuming that array passed into the method will in fact have numbers within in. I didn't spend time anticipating how to catch user input errors. 
