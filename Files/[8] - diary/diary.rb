# frozen_string_literal: true

current_path = File.dirname(__FILE__)

puts 'Hello'

line = nil

all_lines = []

current_time = Time.now

while line != '/q'
  line = STDIN.gets.chomp
  all_lines << line
end

file_name = current_time.strftime('%Y-%m-%d') # 2000-10-12

time = current_time.strftime('%H:%M') # 22:22

hr = '-------------------------------------'

file = File.new(current_path + '/' + file_name + '.txt', 'a') # append // if file is not found create and add line if file exists - add line

file.print("\n" + time + "\n") # \r for windows - add new line

all_lines.pop # delete last item in array

all_lines.each do |i|
  file.puts(i)
end

file.puts(hr)

puts 'All right'

puts "Your note saved in file: #{file}.txt"
