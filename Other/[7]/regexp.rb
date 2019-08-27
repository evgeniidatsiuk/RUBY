# frozen_string_literal: true

# # frozen_string_literal: true
#
# input = nil
# hashtag_regexp = /#[[:word:]-]+/
#
# array = []
# while input != '\q'
#   input = STDIN.gets.chomp
#   if input =~ hashtag_regexp
#     array << input
#   else
#     puts 'not fount'
#   end
# end
# array.pop
#
# puts array.length

input = STDIN.gets.chomp

hashtag_regexp = /#[[:word:]-]+/

hashtags = input.scan(hashtag_regexp)

puts 'Found this hastags:' + hashtags.join(',').delete('#')
