def stretch(arr)
  new_array = []

  arr.each do |i|
    if i % 2 == 0
      new_array << i / 2
      new_array << i / 2
    else
      new_array << i - (i / 2)
      new_array << i / 2
    end
  end
  return new_array
end
