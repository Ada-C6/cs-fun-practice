
def print_array(array)
  print "["
  i = 0
  array.length.times do
  if i == array.length-1
  print array[i]
  print  "]"
  else
  print array[i]
  print ", "
  i += 1
  end
  end
end

def stretch(array)
  returnArray = []
  array.each do |num|
    i = num/2
    modulo = num % 2
    returnArray << (i + modulo)
    returnArray << i
  end
  return returnArray
end

def numUnique(integers)
  newHash = (integers.each_with_object(Hash.new(0)) { |integers, hash| hash[integers] += 1 }).keys.length
  return newHash
end

def numUniqueTwo(integers)
  count = 0
  i = 0
  while i < integers.length do
    if integers[i] != integers[i+1]
      count += 1
    end
    i += 1
  end
  return count
end


integers = [1,1,1,2,2,2,3,3,3,4,4,4,4,5,6,7,8,8,8]
integers2 = [1,1,1,2,2,2,3,3,3,4,4,4,4,5,6,7,7,8,9]
int = [55, 22, 77, 99, 11, 22]
print numUniqueTwo(integers)
print numUniqueTwo(int)
print numUniqueTwo(integers2)
print numUniqueTwo([2])

print integers[100]
