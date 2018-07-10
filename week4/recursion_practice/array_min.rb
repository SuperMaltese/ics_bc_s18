def array_min(array, len)
  if array.length == 1
    array[0]
  else
    first = array_min(array[0, len/2], len/2)
    second = array_min(array  [len/2, len], len - len/2)
    if first > second
      second
    else
      first
    end
  end
end

puts array_min([4, 3,2,5], 4)
