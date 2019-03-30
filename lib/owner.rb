class Owner
  attr_reader :species
  attr_accessor :name, :cat, :dog, :fish, :pets 
  @@all = []
  
  def initialize(species)
    @species = species
    @name = name 
    @@all << self 
    @pets = {:cats => [], :dogs => [], :fishes => []}
  end 
  
  def say_species
    "I am a #{@species}."
  end 
  
  def self.all 
    @@all
  end
  
  def self.count
    @@all.length 
  end 
  
  def self.reset_all 
    @@all.clear
  end
  
  def pets 
    @pets
  end
  
  def buy_fish(fish)
    @pets[:fishes] << Fish.new(fish)
  end
  
  def buy_cat(cat)
    @pets[:cats] << Cat.new(cat)
  end
  
  def buy_dog(dog)
    @pets[:dogs] << Dog.new(dog)
  end
  
  def walk_dogs
    @pets[:dogs].each {|dog| dog.mood = "happy"}
  end 
  
  def play_with_cats
    @pets[:cats].each {|cat| cat.mood = "happy"}
  end 
  
  def feed_fish
    @pets[:fishes].each {|fish| fish.mood = "happy"}
  end 
  
  def sell_pets
    @pets.each do |pet, array|
      array.each do |pet|
        pet.mood = "nervous"
      end 
      array.clear
    end
  end 
  
  def list_pets
    all_dogs = @pets[:dogs].size 
    all_cats = @pets[:cats].size 
    all_fish = @pets[:fishes].size
    return "I have #{all_fish} fish, #{all_dogs} dog(s), and #{all_cats} cat(s)."
  end 
end