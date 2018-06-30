puts 'what\'s your favorite number?'
num_str = gets.chomp
num = num_str.to_i
newnum = num + 1
newnum_str = newnum.to_s
puts 'I think this is a better number: ' + newnum_str
