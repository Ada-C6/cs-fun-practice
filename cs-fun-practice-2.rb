# CS Fundamentals Practice #2

## Problem #1

def mirror(array)
  temp = []
  for i in 0...array.length
    temp << array[array.length - 1 - i]
  end
  return array + temp
end

array = [1, 3, 2, 7]
print mirror(array)
#=> [1, 3, 2, 7, 7, 2, 3, 1]
array = []
print mirror(array)
# => []

## Problem #2
def switchPairs(arr_str)
  for i in 0...arr_str.length
    if arr_str.length % 2 == 0
      
    end
  end
end

puts "\n============="
arr_str = ["to", "be", "or", "not", "to", "be", "hamlet"]
puts switchPairs(arr_str)
#=> ["be", "to", "not", "or", "be", "to", "hamlet"]
puts "\n============="
arr_str = ["to", "be", "or", "not", "to", "be", "hamlet","to"]
puts switchPairs(arr_str)
#=> ["be", "to", "not", "or", "be", "to", "hamlet", "to"]
