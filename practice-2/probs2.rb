# I definitely can see how both of these could be solved recusively. and yet after many hours of struggle I have mostly caused a whole lot of stack overflow. I hope someone does this recursively so I can see theirs and be envious!

def mirror(list)
  new_list = []
  if list.length == 0
    return new_list
  else
    list.each do |item|
      new_list << item
    end

    until list == []
      new_list << list[-1]
      list.delete_at(-1)
    end
  end
  return new_list
end

# print mirror([12])
# print mirror([12, 1, 2, 3, 5, 7])

def switch_pairs(list)
  new_list = []
    (list.length / 2).times do
      new_list << list[1]
      new_list << list[0]
      list.delete_at(0)
      list.delete_at(0)
    end
  if list[0]
    new_list << list[0]
  end
  return new_list
end

# print switch_pairs(["cat","dog", "anteater","horse", "human"])
# puts "\n******"
# print switch_pairs(["cat","dog", "anteater","horse", "human", "animal"])
# puts "\n****"
# print switch_pairs([1,2,3,4,5,6])
# puts "\n****"
# print switch_pairs([1,2,3,4,5,6,7,8])
# puts "\n****"
