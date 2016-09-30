# PROBLEM 2

def stretch(array)
  new_array = []
  array.length.times do |a|
    if array[a] % 2 == 0
      2.times do
        new_array << array[a] / 2
      end
    else
      new_array << ((array[a] / 2) + 1)
      new_array << array[a]/2
    end
  end
  return new_array
end


# PROBLEM 3

def numUnique(array)
  new_hash = {count: 0}
  if array.length == 1 || array.length == 2 && array[0] == array[1]
    new_hash[:count] = 1
  else
    array.length.times do |n|
      if array[n] != array[n-1]
        new_hash[:count] += 1
      end
    end
  end
  return new_hash[:count]
end


# PROBLEM 4

def numUnique2(array)
  count = 0
  if array.length == 1 || array.length == 2
    count = 1
  else
    array.length.times do |n|
      if array[n] != array[n-1]
        count += 1
      end
    end
  end
  return count
end
