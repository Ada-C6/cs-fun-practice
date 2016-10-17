#stretch([18, 7, 4, 24, 11]) => [9, 9, 4, 3, 2, 2, 12, 12, 6, 5]
def stretch(int_array)
	# raise ArgumentError unless int_array.all?{|element| element.class == Fixnum}
	stretched_array=[]
	int_array.length.times do |i|
		remainder=int_array[i]%2
		stretched_array<<(int_array[i]/2 +remainder)
		stretched_array<<(int_array[i]/2)
	end
	return stretched_array
end


# puts "stretch broke [18, 7, 4, 24, 11]" unless stretch([18, 7, 4, 24, 11]) ==[9, 9, 4, 3, 2, 2, 12, 12, 6, 5]
# # puts "passed all tests"
# puts stretch([1])

#mirror([1, 3, 2, 7]) =>  [1, 3, 2, 7, 7, 2, 3, 1]
def mirror(int_array)
	mirror_array=[]
	return mirror_array if int_array==nil
	int_array.length.times do |i|
		mirror_array[i]=int_array[i]
		mirror_array[(int_array.length*2)-(i+1)]=int_array[i]
	end
	return mirror_array
end

puts "mirror broke [1, 3, 2, 7]" unless mirror([1, 3, 2, 7]) == [1, 3, 2, 7, 7, 2, 3, 1]
puts "mirror broke []" unless mirror([]) == []
puts "mirror broke [1]" unless mirror([1]) == [1,1]
puts "passed all tests for mirror"

def switch_pairs(string_array)
	i=0
	until i>string_array.length-1
		unless (i+2)>string_array.length
			string_array[i],string_array[i+1]=string_array[i+1],string_array[i]
		end
		i+=2
	end
	return string_array
end

#puts switch_pairs(["to", "be", "or", "not", "to", "be", "hamlet"])
puts "switch_pairs broke #{["four", "score", "and", "seven", "years", "ago"]}" unless switch_pairs(["four", "score", "and", "seven", "years", "ago"]) == ["score", "four", "seven", "and", "ago", "years"]
puts "switch_pairs broke #{["to", "be", "or", "not", "to", "be", "hamlet"]}" unless switch_pairs(["to", "be", "or", "not", "to", "be", "hamlet"]) == ["be", "to", "not", "or", "be", "to", "hamlet"] 
puts "passed all tests for switch_pairs"

 