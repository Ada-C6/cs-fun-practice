def stretch(list)
  if list.class != Array
      raise Exception.new("Invalid attribute type; must be an Array")
  else
    list.each do |item|
      if item.class != Fixnum
        raise Exception.new("Invalid attribute type; array may only contain Fixnum objects")
      end
    end
  end
  stretched_list = []
  list.each do |number|
    if number % 2 == 0
      # stretched_list.push(number / 2.to_i, number / 2.to_i)
      # I could have combined both >> statements into a single line using the above, because .push accepts more than one argument.
      # ( whereas << accepts only one)
      # I decided to do it as two lines since << was listed in the instructions
      stretched_list << number / 2
      stretched_list << number / 2
    else
      stretched_list << (number / 2) + 1.to_i
      # Ruby naturally rounds down so the lower number is right as-is
      stretched_list << (number / 2)
    end
  end
  return stretched_list
end
