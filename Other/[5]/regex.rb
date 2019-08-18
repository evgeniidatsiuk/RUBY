# frozen_string_literal: true

require 'net/http'

def get_regex_random_string
  string = %w[лом криша зек скат мускат] #words
  str = string.sample
  letter = str.split('').sample
  str.gsub(letter, '*')
end

def word_exists?(word)
  url = "https://uk.wiktionary.org/wiki/#{word}"
  wiktionary_page = Net::HTTP.get(
    URI.parse(URI.encode(url))
  ).force_encoding('UTF-8')
  if wiktionary_page =~ /не має статті з саме цією назвою/
    return true
  else
    return false
  end
end
