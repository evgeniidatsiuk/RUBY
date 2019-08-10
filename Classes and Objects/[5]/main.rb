# frozen_string_literal: true

require_relative 'movie'

name = ARGV[0]
producer = ARGV[1]

artem = Movie.new(name, producer)

3.times do
  puts 'Add a movie, just the name of the movie you want to watch (This producer).'
  sleep 0.5
  x = STDIN.gets.chomp
  artem.movies << x
end

puts "Your movies: \n" + artem.movies.to_s

puts 'And we recommended you watch this movie: ' + artem.movies.sample.to_s

puts "Producer: " + artem.producer.to_s
