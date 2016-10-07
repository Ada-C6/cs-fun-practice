## Problem #1
def mirror(input)
  mirrored_input = []
  # Without this, if I just did mirrored_input << input, I would end up
  # with [[1, 2, 3], 3, 2, 1], so I had to iterate over it
  input.length.times do |i|
    mirrored_input << input[i]
  end
  input.length.times do |i|
    mirrored_input << input[-(i+1)]
  end
  return mirrored_input
end

## Problem #2
def switchPairs(input)
  if input.length % 2 == 0
    (input.length).times do |i|
      if i % 2 == 0
        input[i], input[i + 1] = input[i + 1], input[i]
      end
    end
  end

  if input.length % 2 == 1
    (input.length - 1).times do |x|
      if x % 2 == 0
        input[x], input[x + 1] = input[x + 1], input[x]
      end
    end
  end
  return input
end
