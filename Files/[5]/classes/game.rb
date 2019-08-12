# frozen_string_literal: true

class Game
  attr_reader :letters, :errors, :good_letters, :bad_letters, :status

  def initialize(word)
    @letters      = get_letters(word)
    @errors       = 0
    @good_letters = []
    @bad_letters  = []
    @status       = 0
  end

  def get_letters(word)
    abort "You don't write word" if word.nil? || word == ''
    word.split('')
  end


  def ask_next_letter
    puts "\nEnter the next letter"
    letter = ''
    while letter == ''
      letter = STDIN.gets.chomp
    end
    next_step(letter)
  end

  def next_step(letter)
    return if @status == -1 || @status == 1
    return if @good_letters.include?(letter) || @bad_letters.include?(letter)

    if @letters.include?(letter)
      @good_letters << letter
      @status = 1 if @good_letters.size == @letters.uniq.size
    else @bad_letters << letter
         @errors += 1
         @status = -1 if @errors >= 7
    end
  end
end
