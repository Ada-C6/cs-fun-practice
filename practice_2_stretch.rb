def stretch(an_array)
    stretched_array = []
    i = 0
    an_array.length.times do
        if an_array[i]%2 == 0
            2.times do
                stretched_array << an_array[i]/2
            end
        else
            stretched_array << (an_array[i]/2) + 1
            stretched_array << an_array[i]/2
        end
        i += 1
    end
    return stretched_array
end

# testing...
trial = [5,26,8,79,437,9673]
puts 2*trial.length == stretch(trial).length
puts stretch(trial).to_s
