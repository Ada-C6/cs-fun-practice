
## Problem #1
def print_array(arr)
  print arr
end

# test
# print_array([3, 19, 27, 4, 98, 304, -9, 72])
puts ""


## Problem #2
def stretch(arr)
#ittrate throuth the passed array
 new_arr = []
  arr.each do |number|
    if (number%2) != 0
      odd_number = (number - 1)/2
      new_arr << odd_number + 1
      new_arr << odd_number
    else
      even_number = number/2
      2.times{new_arr << even_number}
    end
  end
  return new_arr
end

# test
 # puts stretch([18, 7, 4, 24, 11])

 puts ""

## Problem #3
 def num_unique(arr)
   count = 0
   hash_unique = {}
   arr.each do |number|
    if hash_unique[number] == number
    hash_unique[number] = number
    else
     hash_unique = {number => number}
     count += 1
    end
  end
  return count
 end

#test
puts num_unique([1,2])
# puts num_unique([5, 7, 7, 7, 8, 22, 22, 23, 31, 35, 35, 40, 40, 40, 41])

## Problem #4
  def num_unique2(arr)
    count = 0
    new_number = nil
    arr.each do |number|
      if new_number != number
        new_number = number
        count += 1
      end
    end
    return count
  end
  # test
# puts num_unique2([5, 7, 7, 7, 8, 22, 22, 23, 31, 35, 35, 40, 40, 40, 41])
