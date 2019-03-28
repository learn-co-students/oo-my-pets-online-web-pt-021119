class Cat
  # code goes here
  #attr_accessor needed as writer/reader for attributes
  attr_reader :name
  attr_accessor :mood
  #need to initialize a Cat
  def initialize(name, mood = "nervous")
    @name = name
    @mood = mood
  end


end
