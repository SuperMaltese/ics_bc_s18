def array_sum(array)
  if array.length == 1
    array[0]
  else
    first = array[0, array.length/2]
    second = array  [array.length/2, array.length]
    array_sum(first) + array_sum(second)
  end
end

puts array_sum [3, 2, 1, 10]
