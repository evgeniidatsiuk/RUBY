require 'cyrillizer'

Cyrillizer.language = 'russian'

puts 'Enter a word for translate:'
string = gets.encode('UTF-8').chomp

string_lat = string.to_lat

if string == string_lat

  puts string.to_cyr
else
  puts string_lat
end
