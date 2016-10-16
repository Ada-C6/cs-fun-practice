#problem #1
 def mirror(array)

  list2 = []
   i = -1
      array.length.times do
         list2 << array[i]
         i-=1
       end
       list = array + list2
       return list
end
mirror([1,2,3,7])


#problem #2
def switchPairs(array)
x = 0
y = 1

     for index in (0...array.length/2)
   array[y], array[x] = array[x], array[y]
    x += 2
    y += 2
  end
  print array
end
switchPairs(["four", "score", "and", "seven", "years", "ago", "hugo"])
