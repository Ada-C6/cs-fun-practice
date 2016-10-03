## Problem #1

def print_array(input)
  print input
end


## Problem #2

def stretch(array)
  stretched_array = []
  element = 0
  until element == array.length
    num = array[element]
    if num % 2 == 0
      2.times do
        stretched_array << num/2
      end
    else
      odd = num/2
      even = odd + 1
      stretched_array << even
      stretched_array << odd
    end
    element += 1
  end
  return stretched_array
end
