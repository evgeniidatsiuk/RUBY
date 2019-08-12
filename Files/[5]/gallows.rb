# frozen_string_literal: true

require_relative 'classes/game'
require_relative 'classes/result_printer'
require_relative 'classes/word_printer'


if Gem.win_platform?
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

printer = ResultPrinter.new

word = WordPrinter.new

game = Game.new(word.word)

while game.status == 0
  printer.print_status(game)
    puts game.status.to_s
  game.ask_next_letter
end

printer.print_status(game)
