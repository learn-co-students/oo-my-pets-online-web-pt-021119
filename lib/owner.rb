require 'pry'

class Owner
  attr_accessor :name
  attr_reader :species

  @@all = []

  def initialize(species)
    @species = species
    self.class.all << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def self.all
    @@all
  end

  def self.count
    self.all.size
  end

  def self.reset_all
    self.all.clear
  end

  def say_species
    "I am a #{@species}."
  end

  def pets
    @pets
  end

  def buy_fish(fish)
    new_fish = Fish.new(fish)
    self.pets[:fishes] << new_fish
  end

  def buy_cat(cat)
    new_cat = Cat.new(cat)
    self.pets[:cats] << new_cat
  end

  def buy_dog(dog)
    new_dog = Dog.new(dog)
    self.pets[:dogs] << new_dog
  end

  def walk_dogs
    self.pets[:dogs].each {|d| d.mood = "happy"}
  end

  def play_with_cats
    self.pets[:cats].each {|c| c.mood = "happy"}
  end

  def feed_fish
    self.pets[:fishes].each {|f| f.mood = "happy"}
  end

  def sell_pets
    self.pets[:dogs].each {|d| d.mood = "nervous"}
    self.pets[:cats].each {|c| c.mood = "nervous"}
    self.pets[:fishes].each {|f| f.mood = "nervous"}
  end

  def list_pets
    "I have #{self.pets[:fishes].size} fish, #{self.pets[:dogs].size} dog(s), and #{self.pets[:cats].size} cat(s)."
  end

end
