symbols = ['M','D','C','L','X','V','I']
numbers = [1000, 500, 100, 50, 10, 50, 1]

num = gets.chomp.to_i

index = 0
string = ''
while index<symbols.length
  quotient = num/numbers[index]
  if quotient != 0
    string = string + symbols[index]*quotient
    num = num - quotient*numbers[index]
  end
  index = index + 1
end

puts string
