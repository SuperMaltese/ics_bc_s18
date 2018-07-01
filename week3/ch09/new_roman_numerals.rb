symbols = ['I','V','X','L','C','D','M']
numbers = [1, 5, 10, 50, 100, 500, 1000]

arabic_num = gets.chomp.to_i

index = (symbols.length) - 1
string = ''

while index > 0
  quotient = arabic_num / numbers[index]
  subtract_index = (index + 1)/2 -1
  if (arabic_num % numbers[index])/numbers[subtract_index*2] == 9
    string = string + symbols[subtract_index*2] + symbols[index]
    puts "adding to string because there's a nine here!"
      arabic_num = arabic_num%numbers[subtract_index*2]
  elsif (arabic_num % numbers[index])/numbers[subtract_index*2] == 4
    string = string + symbols[subtract_index*2] + symbols[index-1]
    puts arabic_num
    puts numbers[index]
    puts numbers[subtract_index*2]
    puts "adding to string because there's a four here!"
      arabic_num = arabic_num%numbers[subtract_index*2]
  elsif quotient != 0
    string = string + symbols[index]*quotient
    arabic_num = arabic_num - quotient*numbers[index]
  end


  index = index - 1
end
string = string + "I"*arabic_num
puts string
