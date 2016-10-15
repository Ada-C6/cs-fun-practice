def mirror(list)
  i = -1
  mirrored = []

  while i < list.length - 1
    i += 1
    mirrored << list[i]
  end

  while i >= 0
    mirrored << list[i]
    i -= 1
  end

  return mirrored
end

puts mirror([1, 3, 2, 7])
