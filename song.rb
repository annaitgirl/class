class Song 
  attr_accessor :name, :duration
  
  def initialize(name, duration)
    @name = name
    @duration = duration
  end

end

@songs = [
  Song.new("Allentown", 555),
  Song.new("Find The River", 343),
  Song.new("Ice Ice Baby", 999999999999),
  Song.new("Doin be Wrong", 876),
]  

