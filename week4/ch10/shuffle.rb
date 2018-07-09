ar = [0,1,2,3,4,5,6,7,8,9]

def shuffle some_array
  (recursive_shuffle some_array, [])
end
def recursive_shuffle unshuffled, shuffled
  if unshuffled.length == 0
    return shuffled
  end
  temp = []
  odd_one_out = rand(unshuffled.length)
  index = 0
  while index < unshuffled.length
    if index == odd_one_out
      shuffled.push unshuffled[odd_one_out]
    else
      temp.push unshuffled[index]
    end
    index = index + 1
  end
  recursive_shuffle temp, shuffled
end

def measure_shuffle shuffled
  sum = 0.0
  index = 0
  while index < shuffled.length
    sum = sum + (index - shuffled[index])**2
    index = index + 1
  end
  Math.sqrt sum / shuffled.length
end

def measure_shuffle_lots og_array
  sum = 0.0
  repeat = 200
  repeat.times do
    sum = sum + measure_shuffle(shuffle og_array)
  end
  sum / repeat
end

def better_shuffle array
  return array.sort_by{rand}
end
puts measure_shuffle shuffle ar
puts measure_shuffle better_shuffle ar
