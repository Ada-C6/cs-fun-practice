def stretch(original_array)
  stretch_array = []

  original_array.each do | num |
    if num % 2 == 0
      num1 = num / 2
      num2 = num / 2
    else
      num1 = (num / 2) + 1
      num2 = num / 2
    end
    stretch_array << num1
    stretch_array << num2
  end

  return stretch_array
end
