array = []
while true
  word = gets.chomp
  if word == ''
    break
  end
  array.push(word.split)
end
puts array.sort
