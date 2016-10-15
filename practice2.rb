# problem #1

def mirror(array)
  mirror = []
  y = array.length
  y.times do |x|
    mirror[x] = array[y-x-1]
  end
  mirror = mirror + array
  return mirror
end

print mirror([5,6,7,8,9])
