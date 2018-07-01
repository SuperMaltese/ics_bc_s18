symbols = ['I','V','X','L','C','D','M']
numbers = [1, 5, 10, 50, 100, 500, 1000]

subtracting_numbers = [1, 10, 100]
subtracting_symbols = ['I','X','C']
arabic_num = gets.chomp.to_i

index = (symbols.length) - 1
string = ''
while index > 0
  puts numbers[index]
  quotient = arabic_num / numbers[index]
  subtract_index = (index + 1)/2 -1
  puts subtract_index
  puts (arabic_num % numbers[index]) / numbers[subtract_index*2]
  if ((arabic_num % numbers[index])/numbers[subtract_index*2] == 9 || (arabic_num % numbers[index])/numbers[subtract_index*2] == 4)
    string = string + symbols[subtract_index*2] + symbols[index]
  else
    if quotient != 0
      if quotient < 3
        string = string + symbols[index]*quotient
      elsif quotient == 4
        if index > 0
          string = string + symbols[index] + symbols[index - 1]
        end
      end
      arabic_num = arabic_num - quotient*numbers[index]
    end
  end
  index = index + 1
end

puts string
