while true
  input = gets.chomp
  year = rand(13) + 1938
  if input == input.upcase
    puts 'NO! NOT SINCE ' + year.to_s
    if input == 'BYE'
      break
    end
  else
    puts 'HUH?! SPEAK UP SONNY!'
  end
end
