# frozen_string_literal: true

require_relative 'regex'

puts 'hello'

regex_string = get_regex_random_string
count = 0
loop do
  puts regex_string
  str = STDIN.gets.chomp

  break if str == 'x'

  if word_exists?(str)
    if str =~ /#{regex_string}/
      puts '+'
      count += 1
    else
      puts '-'
    end
  end
end
puts "Result: #{count}"
