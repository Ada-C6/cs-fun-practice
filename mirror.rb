def mirror_recursive (a)

  if a.length == 1
    return a[0], a[0] # last element of original array and its mirrored copy
  else
    new_array = [a[0]]  # collect the first element of the current array
    temp_array = mirror_recursive(a[1..a.length]) # recursively call mirror on the rest of the array

    counter = 0

    # store the returned values from the recursion in the output array by
    # transferring each element individually

    while counter < temp_array.length
      new_array << temp_array[counter]
      counter += 1
    end

    # add the mirror of the first element in the current array

    new_array << a[0]

    return new_array

  end

end

def mirror_non_recursive(a)

  new_array =  []

counter =0

  while counter < a.length
    new_array[counter] = a[counter]
    counter +=1
  end

  counter = 0

  while counter < a.length
    new_array << a[-(counter+1)]
    counter +=1
  end

  return new_array

end


print mirror_recursive([1,2,3,4,5])


print mirror_non_recursive([1,2,3,4,5])
