#switch.rb

def switchPairs(array)
  first = nil
  array.length.times do |i|
    if i % 2 == 0
      first = array[i]
    else
      array[i-1] = array[i]
      array[i] = first
    end
  end
  return array
end

print switchPairs(["four", "score", "and", "seven", "years", "ago"])
print switchPairs(["to", "be", "or", "not", "to", "be", "hamlet"])
