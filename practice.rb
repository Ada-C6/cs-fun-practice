def print_array(a)
  print "["
  l = a.length
  a.each do |item|
    print "#{item}"
    if item != a[l-1]
      print ", "
    end
  end
  print "]"
end

print_array([4,5,6,4,2,123,42])

def stretch(list)
  print "["
  l = (list.length) * 2
  index = 0
  list.each do |item|
    if item % 2 == 0
      print "#{item/2}, #{item/2}"
    end
    if item % 2 == 1
      print "#{item/2 + 1}, #{item/2}"
    end
    index += 1
    if index < l
      print ", "
    end
  end
  print "]"
end

stretch([4,5,6,4,2,123,42])

def numUnique(list)
  count = {}
  list.each do |item|
    if count[item] == nil
      count[item] = 1
    else
      count[item] +=1
    end
  end
  array = []
  count.each do |k,v|
    array << k
  end
  puts array.length
end

numUnique([7, 7, 7, 7, 8, 22, 22, 23, 31, 35, 35, 40, 40, 40, 41])

# def numUnique2(list)
#   distinct = 0
#   index = 0
#   list.each do |item|
#     if item != list[(index-1)]
#       distinct +=1
#     end
#     index +=1
#   end
#   puts distinct
# end

numUnique2([7, 7, 7, 7, 8, 22, 22, 23, 31, 35, 35, 40, 40, 40, 41])
