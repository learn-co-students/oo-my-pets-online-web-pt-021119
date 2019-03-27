class Fish
  attr_accessor :mood
  attr_reader :name
  
  # why am I not using this here? @@all = []

  def initialize(name)
    @name = name
    @mood = "nervous"
  end
end