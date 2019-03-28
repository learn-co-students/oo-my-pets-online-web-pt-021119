require "pry"
class Owner
  attr_accessor :pets, :name
  attr_reader :species, :pets, :owner
  
  @@all = []
  
  def initialize(species)
  @species = species
  @@all << self 
  @pets =  {:cats=>[], :dogs=>[], :fishes=>[]}
  end  
   
  def buy_cat(name)
  @pets[:cats] << Cat.new(name)
  end 
  
  def buy_dog(name)
  @pets[:dogs] << Dog.new(name)
  end
  
  def buy_fish(name)
  @pets[:fishes] << Fish.new(name)
  end
  
  def self.all
  @@all
  end
  
  def self.reset_all
    @@all = []
  end
  
  def self.count
    @@all.length
  end
  
  def say_species
     "I am a #{species}."
     #binding.pry
  end
   
  def walk_dogs
   @pets[:dogs].each do |dog|
     dog.mood = "happy"
   end 
  end
    
  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end 
    
  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end
    
  def sell_pets
  @pets[:fishes].each do |fish|
      fish.mood = "nervous"
    end
  @pets[:cats].each do |cat|
      cat.mood = "nervous"
    end
  @pets[:dogs].each do |dog|
     dog.mood = "nervous"  
    end
    @pets = []
  end
      
    
    def list_pets
      "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
      #binding.pry
    end
  
  
  
end