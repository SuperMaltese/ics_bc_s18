puts 'This program will output all the leap years in a given range.'
puts 'To begin, please input start year:'
start_year = gets.chomp.to_i
puts 'Grazi. Now please input end year:'
end_year = gets.chomp.to_i
puts

if start_year > end_year
  puts 'You silly, you mixed up the start and end'
  puts
  temp = start_year
  start_year = end_year
  end_year = temp
end

puts 'Here\'s the list of leap years between ' + start_year.to_s + ' AD and ' + end_year.to_s + ' AD.'
range = (start_year - end_year).abs + 1
increment = 0
leap_counter = 0
range.times do
  year = start_year + increment
  increment = increment + 1
  if year % 400 == 0 || year % 4 == 0 && year % 100 != 0
    puts year
    leap_counter = leap_counter + 1
  end
end
if leap_counter == 0
  puts 'There\'s nothing here, you headbutt. Don\'t waste my processing power next time.'
end
