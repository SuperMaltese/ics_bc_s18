dictionary = ['hey','what','is','up', 'lol','man','lol']

def sort some_array
  recursive_sort some_array, []
end

def recursive_sort unsorted_array, sorted_array
  if unsorted_array.length == 0
    return sorted_array
  end
  min_index, inc = 0, 0
  while inc < unsorted_array.length
    if unsorted_array[inc] < unsorted_array[min_index]
      min_index = inc
    end
  inc = inc + 1
  end
  inc = 0
  temp = []
  while inc < unsorted_array.length
    if inc != min_index
      temp.push unsorted_array[inc]
    end
    inc = inc + 1
  end
  sorted_array.push unsorted_array[min_index]
  recursive_sort temp, sorted_array
end

def reg_sort unsorted
  sorted = []
  while unsorted.length > 0
    temp = []
    inc = 1
    min = unsorted[0]
    sorted.push min
    while inc < unsorted.length
      if unsorted[inc] < min
        unsorted.push sorted.pop
        min = unsorted[inc]
        sorted.push min
      else
        temp.push unsorted[inc]
      end
      inc = inc + 1
    end
    unsorted = temp
  end
  sorted
end

puts sort dictionary
# puts sort dictionary
# puts reg_sort dictionary
