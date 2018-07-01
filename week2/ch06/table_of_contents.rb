title = 'Rationality: from AI to Zombies'
page_size = 60
margin = 15
puts
puts title.center(page_size + margin)
puts 'Table of Contents'.center(page_size+ margin)
puts

first_chapter = 'What Do I Mean By "Rationality"?'
first_page = 'page 7'
second_chapter = 'Feeling Rational'
second_page = 'page 12'
third_chapter = 'Why Truth? And ...'
third_page = 'page 15'
fourth_chapter = '... What\'s a Bias, Again?'
fourth_page = 'page 19'

puts 'Chapter One: '.ljust(margin) + first_chapter.ljust(page_size*0.8) + first_page.rjust(page_size*0.2)
puts 'Chapter Two: '.ljust(margin) + second_chapter.ljust(page_size*0.8) + second_page.rjust(page_size*0.2)
puts 'Chapter Three:'.ljust(margin) + third_chapter.ljust(page_size*0.8) + third_page.rjust(page_size*0.2)
puts 'Chapter Four:'.ljust(margin) + fourth_chapter.ljust(page_size*0.8) + fourth_page.rjust(page_size*0.2)