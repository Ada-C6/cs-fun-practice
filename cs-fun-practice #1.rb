

def stretch(arr)

  sec_arr = []
  @divide = []
  t = 0
for i in 0..arr.length-1
  if arr[i] % 2 == 0
    t= arr[i]/2
    @divide << t
    @divide << t
    elsif arr[i]% 2 != 0
     t = arr[i]/2
     t.next
     @divide << t.next
     @divide << t
   end


    # end
  end
print @divide
end
stretch([18, 7, 4, 24, 11])

# list = [18, 7, 4, 24, 11]
