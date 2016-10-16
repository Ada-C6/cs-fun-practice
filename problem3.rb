def numUnique(integer_array)
  numbers = {}
  i = 0
  integer_array.each do | num |
    if numbers.has_key?(input)
      # OR if numbers[input]
      numbers[input] = i += 1
    else
      numbers[input] = 1
    end
  end
  return numbers.length
end
