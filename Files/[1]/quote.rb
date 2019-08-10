# frozen_string_literal: true

current_path = File.dirname(__FILE__)

file_path = current_path + '/data/quotes.txt'

if File.exist?(file_path)
  file = File.new(file_path, 'r:UTF-8')
  lines = file.readlines
  file.close
  puts lines.sample
else
  puts 'File is not found'
end
