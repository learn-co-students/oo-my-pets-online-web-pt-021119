class Owner
  attr_accessor :pets, :name
  attr_reader :species

  @@all = []

  def initialize(species)
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
  end

  def buy_cat(name)
    self.pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    self.pets[:dogs] << Dog.new(name)
  end

  def buy_fish(name)
    self.pets[:fishes] << Fish.new(name)
  end

  def say_species
    "I am a #{@species}."
  end

  def walk_dogs
    self.pets[:dogs].each {|dog| dog.mood = "happy"} if !self.pets[:dogs].empty?
  end

  def play_with_cats
    self.pets[:cats].each {|cat| cat.mood = "happy"} if !self.pets[:cats].empty?
  end

  def feed_fish
    self.pets[:fishes].each {|fish| fish.mood = "happy"} if !self.pets[:fishes].empty?
  end

  def sell_pets
    self.pets.each do |type, pets|
      pets.each {|pet| pet.mood = "nervous"}
      pets.clear
    end
  end

  def list_pets
    list_hash = {}
    self.pets.each {|type, pets| list_hash[type] = pets.count}
    "I have #{list_hash[:fishes]} fish, #{list_hash[:dogs]} dog(s), and #{list_hash[:cats]} cat(s)."
  end

  # --- class methods ---
  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all.clear
  end
end
