def stretch(list)
  new_list = []
  list.each do |item|
    new_second_item = item / 2
    new_first_item  = item - new_second_item
    new_list << new_first_item
    new_list << new_second_item
  end
  new_list

end
