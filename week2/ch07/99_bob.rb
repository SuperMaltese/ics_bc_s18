counter = 99

while counter > 2
  puts counter.to_s + ' bottles of beer on the wall, ' + counter.to_s + ' bottles of beer,'
  counter = counter - 1
  puts 'Take one down and pass it around, ' + counter.to_s + ' bottles of beer on the wall'
  puts nil
end

puts '2 bottles of beer on the wall, 2 bottles of bear'
puts 'Take one down and pass it around, 1 bottle of beer on the wall'
puts
puts '1 bottle of beer on the wall, 1 bottle of beer'
puts 'Take one down and pass it around, no more bottles of beer on the wall'
puts
puts 'No more bottles of beer on the wall, no more bottles of beer'
puts 'Go to the store and buy some more, 99 bottles of beer on the wall'
