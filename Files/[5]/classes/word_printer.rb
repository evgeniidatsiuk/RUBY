class WordPrinter
  attr_reader :word
  def initialize
    @word = get_word.chomp.strip.to_s
  end

  def get_word
    current_path = File.dirname(__FILE__)
    path = './data/words.txt'
    if File.exists?(path)
      file = File.new(path)
      words = file.readlines
      file.close
    else
      abort 'File is not found!'
    end
    return words.sample
  end
end
