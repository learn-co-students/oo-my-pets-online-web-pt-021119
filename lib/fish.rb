class Fish

  attr_reader :name   #Fish can't change its name cuz it can ONLY read NOT write
  attr_accessor :mood #Fish can change its mood cuz it can do both (write & read) its mood

  def initialize(name)
    @name = name      #initializes new instance of a Fish w/a name
    @mood = "nervous" #intializes with a mood = to "nervous"
  end

end
