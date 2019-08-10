if File.exists?('./data/quotes.txt')
file = File.new('./data/quotes.txt', 'r:UTF-8')

content = file.read

puts content
else
  puts "File is not found"
end
