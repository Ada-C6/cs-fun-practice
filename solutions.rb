#[18, 7, 4, 24, 11] => [9, 9, 4, 3, 2, 2, 12, 12, 6, 5]
def stretch(int_array)
	raise ArgumentError unless int_array.all?{|element| element.class == Fixnum}
	stretched_array=[]
	int_array.length.times do |i|
		remainder=int_array[i]%2
		stretched_array<<(int_array[i]/2 +remainder)
		stretched_array<<(int_array[i]/2)
	end
	return stretched_array
end


puts "stretch broke [18, 7, 4, 24, 11]" unless stretch([18, 7, 4, 24, 11]) ==[9, 9, 4, 3, 2, 2, 12, 12, 6, 5]
puts "passed all tests"