class Owner
  attr_reader :species  #can't change its species, can ONLY read NOT write
  attr_accessor :owner, :fish, :cat, :dog, :name

  @@all = []   #Stores all [instance of Owner] that have been created
  @@pets = {:fishes => [], :dogs => [], :cats => []}  #Stores all of the owner's pets

  def initialize(species) #Automatically executes the code in the method body
    @species = species  #Requires Owner to define the pets' species
    @name = name  #Requires Owner to define the pet's name
    @@all << self #Adds new instance of Owner to the collection @@all = []
  end

  def self.all #Class Method
    @@all      #Returns all instance of Owner that have been created
  end

  def self.count #Class Method
    @@all.length   #Returns the [number] of owners that have been created
  end

  def self.reset_all #Class Method
    @@all.clear      #can reset (reassign) the owners that have been created
  end

  def say_species
    "I am a #{species}."
  end

  def name
    @name
  end

  def pets
    @@pets #stores
  end

end
