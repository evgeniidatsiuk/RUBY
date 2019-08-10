# frozen_string_literal: true

current_path = File.dirname(__FILE__)

file_path = current_path + '/data/quotes.txt'

if File.exist?(file_path)
  file = File.new(file_path, 'r:UTF-8')
  lines = file.readlines
  file.close

  lines_count = lines.count

  empty = 0

  lines.each do |item|
    empty += 1 if item == "\n"
  end

  puts 'All lines: ' + lines_count.to_s

  puts 'Empty lines:' + empty.to_s

  puts 'Last five lines: '
  lines.last(5).each do |item|
    puts item
  end

else
  puts 'File is not found'
end
