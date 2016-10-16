def stretch(list)
  # If the element in the input array is even, divide in half and add both halves to the result array. If the element in the input array is odd, divide in half (whole numbers), and put the larger of the two halves in the resulting array first.
  # Checks if the input is the right data type. If not, it'll raise an ArgumentError telling the user what they need to submit.
  begin
    if list.class == Array
      result = []
      list.each do |num|
        if num.class == Fixnum
          if num%2 == 0
            # NOTE: there's a way to do this in one line, but it uses push.
            result << num/2
            result << num/2
          else
            result << (num/2 + 1)
            result << num/2
          end
        else
          raise ArgumentError.new("Array must be composed of integers.")
        end
      end
      return result
    else
      raise ArgumentError.new("input must be an array")
    end
  rescue Exception => err
    puts err.message
  end
end
