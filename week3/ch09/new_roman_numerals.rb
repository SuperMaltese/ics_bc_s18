symbols = ['I','V','X','L','C','D','M']
numbers = [1, 5, 10, 50, 100, 500, 1000]

arabic_num = gets.chomp.to_i

index = (symbols.length) - 1
string = ''

while index > 0
  quotient = arabic_num / numbers[index]
  subtract_index = (index + 1)/2 -1
  if quotient != 0
    string = string + symbols[index]*quotient
    arabic_num = arabic_num - quotient*numbers[index]
  end
  if (arabic_num % numbers[index])/numbers[subtract_index*2] == 9
    string = string + symbols[subtract_index*2] + symbols[index]
      arabic_num = arabic_num%numbers[subtract_index*2]
  elsif (arabic_num % numbers[index])/numbers[subtract_index*2] == 4
    string = string + symbols[subtract_index*2] + symbols[index-1]
      arabic_num = arabic_num%numbers[subtract_index*2]
  end
  index = index - 1
end
string = string + "I"*arabic_num
puts string
