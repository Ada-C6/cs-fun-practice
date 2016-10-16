#This is the 2nd CS-Fun practice Due 10/16

def mirror(array)
  arr =[]
  arr += array
  a = 0
  until arr.length == array.length * 2 do
    a += 1
    index = array.length - a
    arr << array[index]
  end
  return arr
end

def switchPairs(array_of_strings)
  a = 0
  b = 1
  until b > array_of_strings.length || array_of_strings[b] == nil
    array_of_strings[a], array_of_strings[b] = array_of_strings[b], array_of_strings[a]
    a+=2
    b += 2
  end
  return array_of_strings
end
