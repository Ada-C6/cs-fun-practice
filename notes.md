# Things Learned + Questions or general notes:

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
