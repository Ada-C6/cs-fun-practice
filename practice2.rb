## Problem #1

def mirror(array)
  mirror = []
  y = array.length
  y.times do |x|
    mirror[x] = array[y-x-1]
  end
  mirror = mirror + array
  return mirror
end

print mirror([5,6,7,8,9])

##### Problem #2

def switchPairs(string_array)
  x = 0
  y = string_array.length / 2
  y.times do
    a = string_array[x]
    b = string_array[x+1]
    string_array[x] = b
    string_array[x+1] = a
    x += 2
  end
  return string_array
end

print switchPairs(["Hello", "Is", "It", "Me", "You're", "Looking", "For"])
