def stretch(line)
  if line.length == 1
    if line[0] % 2 != 0
      return [line[0]/2 + 1, line[0]/2]
    else
      return [line[0]/2, line[0]/2]
    end
  else
    if line[0] % 2 != 0
      return [line[0]/2 + 1, line[0]/2] + stretch(line[1..line.length])
    else
      return [line[0]/2, line[0]/2] + stretch(line[1..line.length])
    end
  end
end

print stretch([18, 7, 4 ,24, 11])
