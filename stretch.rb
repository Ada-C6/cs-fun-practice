def stretch(line)
  if line.length == 1
      return [line[0]/2 + line[0] % 2, line[0]/2]
  else
      return [line[0]/2 + line[0] % 2, line[0]/2] + stretch(line[1..line.length])
  end
end

print stretch([18, 7, 4 ,24, 11])
