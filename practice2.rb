def mirror(a)
  new_array = a
  x = new_array.length
  x.times do |index|
    new_array << a[x-index-1]
  end
  return new_array
end

mirror([])
mirror([1])
mirror([1,2,3])

def switchPairs(a)
  x = a.length/2.floor
  x.times do |i|
    a[2*i], a[2*i+1] = a[2*i+1], a[2*i]
  end
  return a
end

switchPairs(["Johnson", "Maddie"])
switchPairs(["over","Somewhere","rainbow", "the"])
switchPairs(["y","x","z"])
switchPairs(["z"])
switchPairs([])
