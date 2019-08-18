# frozen_string_literal: true

def get_regex_random_string
  string = %w[кек криша зек дота майнкрафт]
  str = string.sample
  letter = str.split('').sample
  str.gsub(letter, '*')
end

def word_exists(_word)
  true
end
