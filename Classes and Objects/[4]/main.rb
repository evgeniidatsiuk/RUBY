# frozen_string_literal: true

puts 'The enemy name of what personage do you want to know?'

name = STDIN.gets.chomp.downcase

case name
when 'batman'
  puts 'Joker'
when 'sherlock holmes'
  puts 'Professor Moriarty'
when 'pinocchio'
  puts 'Carabas-Barabas'
when 'frodo gaggins'
  puts 'Sauron'
when 'mozart'
  puts 'Salieri'
else
  puts 'Character not found!'
end
