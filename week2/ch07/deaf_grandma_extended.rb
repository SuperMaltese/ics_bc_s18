in_row = 0
while true
  input = gets.chomp
  year = rand(13) + 1938
  if input!= 'BYE'
    in_row = 0
  end
  if input == input.upcase
    puts 'NO! NOT SINCE ' + year.to_s
    if input == 'BYE'
      in_row = in_row + 1
      if in_row >= 3
        break
      end
    end
  else
    puts 'HUH?! SPEAK UP SONNY!'
  end
end
