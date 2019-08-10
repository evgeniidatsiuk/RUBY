# frozen_string_literal: true

require_relative 'game'
require_relative 'result_printer'

if Gem.win_platform?
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

printer = ResultPrinter.new

word = ARGV[0]

game = Game.new(word)

while game.status == 0
  printer.print_status(game)
    puts game.status.to_s
  game.ask_next_letter
end

printer.print_status(game)
