# For each of the following problems, you should write a single method to solve
# the problem. You will be working with arrays in each problem, but should use
# array indexing and loops to solve the problems. You should **not** utilize
# any [Ruby Array methods](https://ruby-doc.org/core-2.2.0/Array.html), with
# the exception of `<<` and `[]`.
# e.g.
# - `array.first` ==> NOT OK
# - `puts array[0]` ==> OK
# - `array.insert(i, array2[loc)` ==> NOT OK
# - `array[i] = array2[loc]` ==> OK
# - `array.pop` ==> NOT OK
# - `array.uniq` ==> NOT OK ;) See problem 3 and 4.

## Problem #1
def print_array(array_of_integers)
  print array_of_integers
end

## Problem #2
def stretch(array)
  stretch = []
  array.each do |i|
    if i % 2 == 0
      2.times do
        stretch << i / 2
      end
    else
      stretch << (i / 2) + 1
      stretch << (i / 2)
    end
  end
  return stretch
end

## Problem #3
def numUnique(integer_array)
  numbers = {}
  integer_array.each do |input|
    if !numbers.has_key?(input)
      numbers[input] = 1
    end
  end
  return numbers.length
end

## Problem #4
# Write a method named `numUnique2` that functions the same as `numUnique`
# except that it **does NOT use a hash** to solve the problem. In this version,
# you should only iterate over the array, but **use no auxiliary storage**
# outside of fixnum variables, if needed.
# Remember that you can assume that the values in the array appear in
# sorted (nondecreasing) order.

def numUnique2(sorted_integer_array)

end
