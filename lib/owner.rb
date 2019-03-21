require 'pry'

class Owner
  # code goes here
  @@all = []
  attr_accessor :name, :pets
  attr_reader :species
  
  def initialize(specie)
    @species = specie
     @pets = {fishes: [], cats:[], dogs:[]}
    @@all << self
  end
  
  def self.all 
    @@all
  end
  
  def self.count
    self.all.length
  end
  
  def self.reset_all
    self.all.clear
  end
  
  def say_species
     "I am a #{@species}."
  end 
  
  
  def buy_fish(name)
    self.pets[:fishes] << Fish.new(name)
  end
  
   def buy_cat(name)
    self.pets[:cats] << Cat.new(name)
  end
  
  def buy_dog(name)
    self.pets[:dogs] << Dog.new(name)
  end
  
  def walk_dogs
    self.pets[:dogs].map {|dog| dog.mood = ("happy")}
  end
  
  def play_with_cats
    self.pets[:cats].map {|cat| cat.mood = ("happy")}
  end
  
  def feed_fish
    self.pets[:fishes].map {|fish| fish.mood = ("happy")}
  end
  
  def sell_pets
    self.pets.each do |species, species_array|
      species_array.map do |pet|
        pet.mood = "nervous"
      end
    end
    self.pets.clear
  end
  
  def list_pets
    "I have #{pets[:fishes].length} fish, #{pets[:dogs].length} dog(s), and #{pets[:cats].length} cat(s)."
  end
  
  
end