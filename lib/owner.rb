class Owner

  attr_reader :species  #can't change its species, can ONLY read NOT write
  attr_accessor :fish, :cat, :dog, :name, :pets

  @@all = []   #Stores all [instance of Owner] that have been created


  def initialize(species) #Automatically executes the code in the method body
    @species = species  #Requires Owner to define the pets' species
    @name = name  #Requires Owner to define the pet's name
    @@all << self #Adds new instance of Owner to the collection @@all = []
    @pets = {:fishes => [], :dogs => [], :cats => []}  #Stores all of the owner's pets
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

  def pets
    @pets
  end

  def buy_fish(fish_name)
    pets[:fishes] << Fish.new(fish_name)
  end

  def buy_cat(cat_name)
    pets[:cats] << Cat.new(cat_name)
  end

  def buy_dog(dog_name)
    pets[:dogs] << Dog.new(dog_name)
  end

  def walk_dogs
    pets[:dogs].each { |dog| dog.mood = "happy" }
  end

  def play_with_cats
    pets[:cats].each { |cat| cat.mood = "happy"}
  end

  def feed_fish
    pets[:fishes].each { |fish| fish.mood = "happy"}
  end

  def list_pets
    "I have #{pets[:fishes].length} fish, #{pets[:dogs].length} dog(s), and #{pets[:cats].length} cat(s)."
  end

  def sell_pets
    pets.each do |pet, owners_pets|       #pets.clear.each { |pet| pet.mood = "nervous"}
      owners_pets.collect do |pet|
        pet.mood = "nervous"
      end
      owners_pets.clear
    end
  end

end
