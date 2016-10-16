



#solution 1 - problem 3
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

print numUnique([3, 3, 5, 5, 7, 8, 9])



#solution 1 - problem 4
def numUnique2(list)
  distinct = 0
  index = 0
  list.each do |item|
    if item != list[(index-1)]
      distinct += 1
    end
    index += 1
  end
  return distinct
end
