Dir.chdir '/Users/KevinGao/Documents/'
long_string = File.read 'birthdays.txt'
hash = {}
long_string.each_line do |line|
  temp = line.chomp.split(", ")
  hash[temp[0]] = temp[1] + ' ' + temp[2]
end
puts hash
puts 'first name, please'
fname = gets.chomp.capitalize
puts 'last name, please'
lname = gets.chomp.capitalize
full_name = "#{fname} #{lname}"
puts full_name
if hash[full_name] == nil
  puts 'You\'re not important enough to be in our database.'
else
  puts hash[full_name]
end
