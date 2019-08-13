current_path = File.dirname(__FILE__)

file_path = current_path + '/data/movies.txt'

if File.exists?(file_path)
  file = File.new(file_path)
  movies = file.readlines
  file.close
  index = rand(movies.length)
  index % 2 == 0 ? index : index -= 1
else
  puts 'File is not found!'
end



puts "Hello, we recommended you this movie: \n#{movies[index]}\n#{movies[index+1]}"
