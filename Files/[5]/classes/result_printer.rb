# frozen_string_literal: true

class ResultPrinter
  def get_word_for_print(letters, good_letters)
    result = ''
    letters.each do |letter|
      result += if good_letters.include?(letter)
                  letter + ' '
                else
                  '__ '
                end
    end

    result
  end

  def cls
    system('clear') || system('cls')
  end

  def print_gallows(errors)
    case errors
        when 0
          puts '
              _______
              |/
              |
              |
              |
              |
              |
              |
              |
            __|________
            |         |
            '
        when 1
          puts '
            _______
            |/
            |     ( )
            |
            |
            |
            |
            |
            |
          __|________
          |         |
          '
        when 2
          puts '
            _______
            |/
            |     ( )
            |      |
            |
            |
            |
            |
            |
          __|________
          |         |
          '
        when 3
          puts '
            _______
            |/
            |     ( )
            |      |_
            |        \\
            |
            |
            |
            |
          __|________
          |         |
          '
        when 4
          puts '
            _______
            |/
            |     ( )
            |     _|_
            |    /   \\
            |
            |
            |
            |
          __|________
          |         |
          '
        when 5
          puts '
            _______
            |/
            |     ( )
            |     _|_
            |    / | \\
            |      |
            |
            |
            |
          __|________
          |         |
          '

        when 6
          puts '
            _______
            |/
            |     ( )
            |     _|_
            |    / | \\
            |      |
            |     / \\
            |    /   \\
            |
          __|________
          |         |
          '
        when 7
          puts '
            _______
            |/     |
            |     (_)
            |     _|_
            |    / | \\
            |      |
            |     / \\
            |    /   \\
            |
          __|________
          |         |
          '
        end
  end

  def print_status(game)
    cls
    puts 'Word: ' + get_word_for_print(game.letters, game.good_letters)
    puts "Errors: (#{game.errors}): #{game.bad_letters.join(', ')}"
    print_gallows(game.errors)

    if game.errors >= 7
      puts 'You lose :('
      puts 'Word: ' + game.letters.join('')
    else
      if game.letters.uniq.size == game.good_letters.size
        puts "Congratulations! You win!\n\n"
      else
        puts 'Chances you have: ' + (7 - game.errors).to_s
      end
    end
  end
end
