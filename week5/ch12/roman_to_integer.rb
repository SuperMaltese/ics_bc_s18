ref_hash = {}
ref_hash['M'] = 1_000
ref_hash['D'] = 500
ref_hash['C'] = 100
ref_hash['L'] = 50
ref_hash['X'] = 10
ref_hash['V'] = 5
ref_hash['I'] = 1

def valid roman_string, ref_hash
  #Check if there's too many in a row
  prev_letter = roman_string[0]
  inc = 1
  new_string = prev_letter
  while inc < roman_string.length
    curr_letter = roman_string[inc]
    if prev_letter != roman_string[inc]
      new_string += '_'
    end
    new_string += curr_letter
    prev_letter = curr_letter
    inc += 1
  end
  array = new_string.split('_')
  array.each do |item|
    if item.length >= 3
      return false
    end
    if item.count('V') >= 2 || item.count('D') >= 2 || item.count('L') > 2
      return false
    end
  end

  array.each do |letters|
    puts "letter #{letters}"
    if ref_hash[letters[0]] == nil
      return false
    end
  end
  #Check if there's something like IIV
  inc = 0
  while inc < roman_string.length - 2
    current = ref_hash[roman_string[inc]]
    target  = ref_hash[roman_string[inc + 2]]
    if current < target
      return false
    end
    inc += 1
  end
  return true
end

def convert_roman roman_string, ref_hash
  input_string = roman_string.reverse.upcase
  prev_num = ref_hash[input_string[0]]
  sum = prev_num

  (1..input_string.length - 1).each do |index|
    current_num = ref_hash[input_string[index]]
    if current_num < prev_num
      sum -= current_num
    elsif current_num >= prev_num
      sum += current_num
    else
      puts 'wtf happened'
    end
    prev_num = current_num
  end
  puts sum
end

def faulty_valid roman_string, ref_hash
  prev_letter = roman_string[0]
  inc = 1
  new_string = prev_letter
  while inc < roman_string.length
    curr_letter = roman_string[inc]
    if prev_letter != roman_string[inc]
      new_string += '_'
    end
    new_string += curr_letter
    prev_letter = curr_letter
    inc += 1
  end
  array = new_string.split('_')
  #Check if there's random letters
  array.each do |letters|
    puts "letter #{letters}"
    if ref_hash[letters[0]] == nil
      return false
    end
  end
end

input = gets.chomp.upcase
if !valid(input, ref_hash)
  puts 'Please input a valid Roman numeral.'
else
  convert_roman input, ref_hash
end
puts
puts faulty_valid(input, ref_hash)
puts ref_hash['M']
