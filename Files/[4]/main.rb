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

questions.each_with_index do |x, y|
  puts x
  answer = STDIN.gets.chomp + "\n"
  if answers.include?(answer)
    puts 'Right!'
  else
    puts 'Incorrect answer. Correct answer: ' + answers[y]
  end
end
