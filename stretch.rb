def stretch(array)
  results = []
  array.each do |num|
    if num % 2 == 0
      2.times do
        results << num/2
      end
    else
      small = num/2
      big = num - small
      results << big
      results << small
    end
  end
  return results
end
