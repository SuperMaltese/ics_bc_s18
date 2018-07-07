symbols = ['I','V','X','L','C','D','M']
numbers = [1, 5, 10, 50, 100, 500, 1000]

input = gets.chomp.to_i

index = (symbols.length) - 1
string = ''

while index > 0
  quotient = input / numbers[index]
  sub = (index + 1)/2 -1
  if quotient != 0
    string = string + symbols[index]*quotient
    input = input - quotient*numbers[index]
  end
  if (input % numbers[index])/numbers[sub * 2] == 9
    string = string + symbols[sub * 2] + symbols[index]
    input = input % numbers[sub * 2]
  elsif (input % numbers[index])/numbers[sub * 2] == 4
    string = string + symbols[sub * 2] + symbols[index-1]
      input = input % numbers[sub * 2]
  end
  index = index - 1
end
string = string + "I" * input
puts string
