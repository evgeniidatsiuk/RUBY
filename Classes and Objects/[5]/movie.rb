class Movie
  attr_accessor :name, :producer, :movies

  def initialize(name, producer)
    @name     = name
    @producer = producer
    @movies   = []
  end
end
