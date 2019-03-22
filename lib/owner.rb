require 'pry'

class Owner
  attr_reader :species
  attr_accessor :name, :pets
  @@all = []
  
  def initialize(species)
    @species = species
    @@all << self
    @pets = {:cats => [], :dogs => [], :fishes => []}
  end 
  
  def say_species
    p "I am a #{self.species}."
  end 
  
  def buy_fish(name) 
    fish = Fish.new(name) 
    pets[:fishes] << fish 
  end   
  
  def buy_cat(name)
    cat = Cat.new(name)
    pets[:cats] << cat 
  end  
  
  def buy_dog(name)
    dog = Dog.new(name)
    pets[:dogs] << dog 
  end 
  
  def walk_dogs
    self.pets[:dogs].map{|dog| dog.mood = "happy"}
  end 
  
  def play_with_cats 
    self.pets[:cats].map{|cat| cat.mood = "happy"}
  end 
  
  def feed_fish 
    self.pets[:fishes].map{|fish| fish.mood = "happy"}
  end 
  
  def sell_pets 
    self.pets.map do |species, pet_hash|
      pet_hash.map do |pet|
        pet.mood = "nervous"
      end 
      pet_hash.clear 
    end
  end
  
  def list_pets 
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end 
  
  def self.all 
    @@all 
  end 
  
  def self.count 
    all.length 
  end 
  
  def self.reset_all 
    all.clear
  end 
  
end