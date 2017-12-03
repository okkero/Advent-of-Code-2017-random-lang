def find_even_division(ints)
  i = 0
  while i < ints.size
    a = ints[i]
    j = i + 1
    while j < ints.size
      b = ints[j]
      biggest = Math.max(a, b)
      smallest = Math.min(a, b)
      if biggest % smallest == 0
        return biggest / smallest
      end
      j += 1
    end
    i += 1
  end

  return Nil
end
