dictionary = ['Hey','QHat','is','up', 'Lol','man','lol']

def sort some_array
  recursive_sort some_array, []
end

def recursive_sort unsorted_array, sorted_array
  if unsorted_array.length == 0
    return sorted_array
  end
  min_index, inc = 0, 0
  while inc < unsorted_array.length
    if unsorted_array[inc].downcase < unsorted_array[min_index].downcase
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

puts sort dictionary
