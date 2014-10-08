def sum_with_while(min, max)
  # CONSTRAINT: you should use a while..end structure
  i=min
  while min < max
    min= min + 1
    i= i + min
  end
  return i
end

def sum_with_for(min, max)
  # CONSTRAINT: you should use a for..end structure
  k = 0
  for num in (min..max)
    k= k + num
  end
  return k
end

def sum_recursive(min, max)
  # CONSTRAINT: you should use a recursive algorithm, i.e. the method should call itself
    return min if min == max
    min + sum_recursive(min+1, max)
end

