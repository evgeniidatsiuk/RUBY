current_path = File.dirname(__FILE__)


file_name = "fire"


file = File.new(current_path + '/'+ "#{file_name}.txt", 'a')
file.puts("Hello, file!")

if File.exists?(file)
  file = File.new(file)
  hello = file.read
  puts hello
else
  puts 'File is not found'
end
