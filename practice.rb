def stretch(list)
  new_list = []

  list.each do |num|
    if num % 2 == 0
      new_num = num/2
      new_list.push(new_num, new_num)
    else
      new_num = (num/2)
      new_list.push(new_num + 1, new_num)
    end
  end

  return new_list
end
