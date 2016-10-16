## Problem #1

def mirror(list)
  doubled = list.clone

  list.length.times do |i|
    doubled << list[list.length - 1 - i]
  end

  return doubled
end


## Problem #2

def switchPairs(list)
  switched = []
  i = 0

  until i > (list.length)/2 + 1 do
    switched << list[i + 1]
    switched << list[i]
    i += 2
  end

  if list.length % 2 != 0
    switched << list[-1]
  end

  return switched
end
