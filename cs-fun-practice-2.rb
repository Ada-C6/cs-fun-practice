# CS Fundamentals Practice #2

## Problem #1

def mirror(array)
  temp = []
  for i in 0...array.length
    temp << array[array.length - 1 - i]
  end
  return array + temp
end

puts "\n=====TEST:NORMAL ARRAY========"
array = [1, 3, 2, 7]
print mirror(array)
#=> [1, 3, 2, 7, 7, 2, 3, 1]
puts "\n=====TEST:EMPTY ARRAY========"
array = []
print mirror(array)
# => []

## Problem #2
def switchPairs(arr_str)
  temp = []
  for i in 0...arr_str.length/2
    temp << arr_str[2 * i + 1]
    temp << arr_str[2 * i]
  end
  if arr_str.length % 2 == 1
    temp << arr_str[-1]
  end
  return temp
end

puts "\n=====TEST:ODD SIZE ARRAY========"
arr_str = ["to", "be", "or", "not", "to", "be", "hamlet"]
print switchPairs(arr_str)
#=> ["be", "to", "not", "or", "be", "to", "hamlet"]
puts "\n=====TEST:EVEN SIZE ARRAY========"
arr_str = ["to", "be", "or", "not", "to", "be", "hamlet","to"]
print switchPairs(arr_str)
#=> ["be", "to", "not", "or", "be", "to", "to", "hamlet"]
