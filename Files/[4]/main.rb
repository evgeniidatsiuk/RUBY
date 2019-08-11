# frozen_string_literal: true

current_path = File.dirname(__FILE__)

answers_path = current_path + '/data/answers.txt'
questions_path = current_path + '/data/questions.txt'

if File.exist?(answers_path)
  file = File.new(answers_path)
  answers = file.readlines
  file.close
else
  puts 'File is not found'
end

if File.exist?(questions_path)
  file = File.new(questions_path)
  questions = file.readlines
  file.close
else
  puts 'File is not found'
end
# count = 0
# questions.each_with_index do |x, y|
#   puts x
#   answer = STDIN.gets.chomp + "\n"
#   if answers.include?(answer)
#     puts 'Right!'
#     count += 1
#   else
#     puts 'Incorrect answer. Correct answer: ' + answers[y]
#   end
# end
# puts 'You have right answers: ' + count.to_s + ' from ' + questions.count.to_s

index = 0
correct_answers = 0
while index < questions.size

  puts questions[index]
  answer = STDIN.gets.chomp
  correct_answer = answers[index]

  if answer == correct_answer.chomp
    puts 'Right!'
    correct_answers += 1
  else
    puts 'Incorrect answer. Correct answer: ' + answers[index]
  end
  index += 1
end

puts "You have right answers: #{correct_answers} from #{index}"
