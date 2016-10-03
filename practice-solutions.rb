def stretch(arr)
  list = []

  arr.each do |a|
    if a % 2 == 0
      2.times do
        list << a/2
      end
    else
      list << (a/2) + 1
      list << a/2
    end

  end
  return list
end


  
