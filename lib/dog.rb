class Dog
  
  attr_accessor :mood
  attr_reader :name 
  
  def initialize(name, mood = 'nervous')
    @name = name
    @mood = mood
  end
  # code goes here
end