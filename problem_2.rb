def stretch(array)
  new_array = []

  for num in array do
    half = num / 2
    if (num % 2 ) == 0 # num is even
      2.times do
        new_array << half
      end
    else # num is odd
      new_array << (half+ 1) << half
    end
  end
  return new_array
end
