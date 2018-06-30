title = 'Table of Contents'
page_size = 54

puts
puts title.center(page_size)
puts

array = [['Chapter 1: Getting Started', 'page 1'],
         ['Chapter 2: Numbers', 'page 9'],
         ['Chapter 3: Letters', 'page 13']]

array.each do |row|
  puts row[0].ljust(page_size/2) + row[1].rjust(page_size/2)
end
