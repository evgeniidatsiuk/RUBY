# frozen_string_literal: true

input = STDIN.gets.chomp

email_regexp = /^[a-z\d_+.\-]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+$/i

emails = ['gmail.com', 'ukr.net']
russian_email = ['mail.ru', 'yandex.ru']

if input =~ email_regexp
  email = input.split('@').last
  puts 'Change email' if russian_email.include?(email)
  puts 'yes' if emails.include?(email)
else
  puts 'no'
end
