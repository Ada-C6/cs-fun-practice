def stretch(array)
  new_array = []
  array.each do |i|
    if i % 2 == 0
      2.times do new_array << i/2 end
    else
      new_array << i/2
      new_array << (i/2 + 1)
    end
  end
  return new_array
end
