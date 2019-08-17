str = STDIN.gets.chomp.downcase

revers_str = str.reverse

if str == revers_str
  puts '+'
else
  puts '-'
end
