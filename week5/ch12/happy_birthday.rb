puts 'What year were you born?'
year = gets.chomp.to_i
puts 'What month were you born?'
month_str = gets.chomp
months = {'January' => 1,
          'February' => 2,
          'March' => 3,
          'April' => 4,
          'May' => 5,
          'June' => 6,
          'July' => 7,
          'August' => 8,
          'September' => 9,
          'October' => 10,
          'November' => 11,
          'December' => 12}
month = months[month_str]
puts 'What day of the month were you born?'
day = gets.chomp.to_i
birthday = Time.new(year, month, day)
age_in_seconds = Time.new - birthday
age = age_in_seconds.to_i / (365 * 24 * 3600)
age.times do
  puts 'SPANK!'
end
