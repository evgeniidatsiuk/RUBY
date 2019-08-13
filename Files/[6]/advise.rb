current_path = File.dirname(__FILE__)

file_path = current_path + '/data/movies.txt'

if File.exists?(file_path)
  file = File.new(file_path)
  movies = file.readlines
  file.close
else
  puts 'File is not found!'
end

puts "Hello, We advise you this movie: \n#{movies.sample}"
