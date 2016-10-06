# You will be working with arrays in each problem, but should use array indexing and loops to solve the problems. You should not utilize any Ruby Array methods, with the exception of <<, [], and .length.

# PROBLEM 1

def print_array(arr)
  str = "["
  len = arr.length
  i = 0

  while i < len
    if i != (len-1)
      str += arr[i].to_s + ", "
    else
      str += arr[i].to_s
    end
    i += 1
  end

  str += "]"
  return str
end

list = [3, 19, 27, 4, 98, 304, -9, 72]
puts print_array(list)

# PROBLEM 2

def stretch(arr)
  new_list = []

  arr.each do |i|
    if i % 2 == 0
      new_list << (i / 2)
      new_list << (i / 2)
    else
      new_list << ((i-1)/2 + 1)
      new_list << ((i-1)/2)
    end
  end
  return new_list
end

list = [18, 7, 4, 24, 11]
puts stretch(list)

# PROBLEM 3

def numUnique(arr)
  h = {}
  arr.each do |i|
    if h[i]
      h[i] += 1
    else
      h[i] = 1
    end
  end

  len = h.keys.length
  return len
end

list = [5, 7, 7, 7, 8, 22, 22, 23, 31, 35, 35, 40, 40, 40, 41]
puts numUnique(list)

list = [1, 2, 11, 17, 19, 20, 23, 24, 25, 26, 31, 34, 37, 40, 41]
puts numUnique(list)

list = []
puts numUnique(list)

# PROBLEM 4

def numUnique2(arr)
  len = arr.length

  if len == 0
    count = 0
  else
    count = 1
  end

  (1...len).each do |i|
    if arr[i] != arr [i-1]
      count += 1
    end
  end

  return count
end

list = [5, 7, 7, 7, 8, 22, 22, 23, 31, 35, 35, 40, 40, 40, 41]
puts numUnique2(list)

list = [1, 2, 11, 17, 19, 20, 23, 24, 25, 26, 31, 34, 37, 40, 41]
puts numUnique2(list)

list = []
puts numUnique2(list)
