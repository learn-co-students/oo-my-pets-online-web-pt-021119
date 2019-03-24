require 'pry'

class Owner

@@all = []

attr_accessor :name, :pets

attr_reader :species

def self.all
  @@all
end

def self.count
  self.all.length
end

def self.reset_all
  self.all.clear
end

def initialize(species)
  @species = species
  @pets = {fishes: [], cats: [], dogs: []}
  @@all << self
end

def say_species
  "I am a #{@species}."
end

def buy_fish(name)
  fish = Fish.new(name)
  @pets[:fishes] << fish
end

def buy_cat(name)
  cat = Cat.new(name)
  @pets[:cats] << cat
end

def buy_dog(name)
  dog = Dog.new(name)
  @pets[:dogs] << dog
end

def walk_dogs
  self.pets[:dogs].each {|x| x.mood = "happy"}
end

def play_with_cats
  self.pets[:cats].each {|x| x.mood = "happy"}
end

def feed_fish
  self.pets[:fishes].each {|x| x.mood = "happy"}
end

def sell_pets
  self.pets.values.flatten.each {
    |x|  x.mood = "nervous"}
  self.pets.each {|key, value| value.clear}
  # self.pets.values.clear

def list_pets
  "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."

end

end



end
