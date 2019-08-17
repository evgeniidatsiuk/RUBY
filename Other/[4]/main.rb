str = STDIN.gets.chomp

stripped_string = str.delete(' ,.!?;:-—').downcase

revers_str = stripped_string.reverse

if stripped_string == revers_str
  puts '+'
else
  puts '-'
end
