# frozen_string_literal: true

require_relative 'classes/movie'
require_relative 'classes/person'

zek_film = Movie.new('KPZ')
dota_film = Movie.new('DOTA')
pc_film = Movie.new('How to learn HTML and CSS')

zek = Person.new('Zek')
zek.favorite_movie = zek_film
puts 'Full name: ' + zek.name
puts 'Favorite movie: ' + zek.favorite_movie.name


dota = Person.new('Dota')
dota.favorite_movie = dota_film
puts 'Full name: ' + dota.name
puts 'Favorite movie: ' + dota.favorite_movie.name


pc = Person.new('PC')
pc.favorite_movie = pc_film
puts 'Full name: ' + pc.name
puts 'Favorite movie: ' + pc.favorite_movie.name
