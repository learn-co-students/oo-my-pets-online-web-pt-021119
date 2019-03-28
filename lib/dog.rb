class Dog

  attr_reader :name   #Dog can't change its name cuz it can only read NOT write
  attr_accessor :mood #Dog can change its mood cuz it can do both (write & read) its mood

  def initialize(name)
    @name = name      #initializes new instance of Dog w/a name
    @mood = "nervous" #intializes with a mood = to "nervous"
  end

end
