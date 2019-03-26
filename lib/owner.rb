require 'pry'
class Owner
  
  @@all = []
  
  attr_accessor :name, :pets
  attr_reader :species 
  
  def initialize(species)
    @species = species
    @@all << self
    @pets = {fishes: [], dogs: [], cats: []}
  end 
  
  def self.all 
    @@all 
  end 
  
  def self.count
    @@all.count
  end 
  
  def self.reset_all
    @@all.clear
  end 
  
  def say_species
   "I am a human."
  end 
  
  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes].push(fish)
  end 
  
  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats].push(cat)
  end 
  
  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs].push(dog)
  end 
  
  def walk_dogs
    @pets[:dogs].collect {|dog| dog.mood = "happy"}
  end 
  
  def play_with_cats
    @pets[:cats].collect {|cat| cat.mood = "happy"}
  end 
  
  def feed_fish
    @pets[:fishes].collect {|fish| fish.mood = "happy"}
  end 
  
  def sell_pets
    binding.pry
    @pets.collect {|key, value| [key][value] = "happy"} 
  end 
end