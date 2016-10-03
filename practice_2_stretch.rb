def stretch(an_array)
    stretched_array = []
    i = 0
    an_array.length.times do
        split_value = an_array[i] / 2
        if an_array[i] % 2 == 0
            stretched_array << split_value
        else
            stretched_array << split_value + 1
        end
        stretched_array << split_value
        i += 1
    end
    return stretched_array
end

# testing...
trial = [5,26,8,79,437,9673]
print "Is the length of the result array twice the length that was passed in?   "
puts 2*trial.length == stretch(trial).length
puts "Here's the array passed in #{ trial }."
puts "Here's the result array #{ stretch(trial) }."


# live coding...

def live_stretch(input)
    output = []
    input.length.times do |i|   # i is a counter-starts at 0
        split_value = input[i] / 2
        output << (input[i] % 2 == 0 ? split_value : split_value + 1)
        output << split_value
    end
    return output
end

def live_stretch_without_shovel(input)
    output = []
    input.length.times do |i|   # i is a counter-starts at 0
        split_value = input[i] / 2
        output[2 * i] = (input[i] % 2 == 0 ? split_value : split_value + 1)
        output[2 * i + 1] = split_value
    end
    return output
end

# ternary operator review notes:
# conditional
# question mark
# what do if condition is true
# colon
# what do if condition is false

# testing...
puts "\n\nHere's the live coding stretch method..."
trial = [5,26,8,79,437,9673]
print "Is the length of the result array twice the length that was passed in?   "
puts 2*trial.length == live_stretch(trial).length
puts "Here's the array passed in #{ trial }."
puts "Here's the result array #{ live_stretch(trial) }."
