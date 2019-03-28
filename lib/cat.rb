class Cat

  attr_reader :name #can't change it's name cuz it can only read NOT write
  attr_writer :mood #can change

  def initialize(name)  #initializes new instance of a cat w/a name
    @name = name
    mood  #intializes with a "nervous" mood
  end

  def mood()
  "nervous" #assigns mood (nervous || playful) to a new instance of Cat
  end

end
