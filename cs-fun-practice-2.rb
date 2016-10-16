## Problem #1
def mirror(arr)
  target_index = arr.length
  source_index = arr.length - 1

  while source_index >= 0
    arr[target_index] = arr[source_index]
    source_index -= 1
    target_index += 1
  end

  return arr
end

## Problem #2
def switchPairs(arr)
  index = 0

  until index >= arr.length
    if index % 2 != 0
      two = arr[index]
      one = arr[index - 1]
      arr[index] = one
      arr[index - 1] = two
    end
    index += 1
  end

  return arr
end
