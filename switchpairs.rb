def switchPairs(strings_array)

  num_times = strings_array.length
  if strings_array.length % 2 == 1
    num_times -= 1
  end

  num_times.times do |i|
    if i % 2 == 0
      store_first = strings_array[i]
      strings_array[i] = strings_array[i+1]
      strings_array[i+1] = store_first
    end
  end
  return strings_array
end
