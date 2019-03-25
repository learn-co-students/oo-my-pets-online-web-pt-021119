class Owner
@@all = []
attr_accessor :name, :pets
attr_reader :species

def initialize(name, species="human")
    @species = species
    @name = name
    @@all << self
    @pets = {fishes: [], cats: [], dogs: []}
end

def self.all
   @@all
end

def self.count
   @@all.size
end

def self.reset_all
   @@all.clear
end

def say_species
   "I am a #{@species}."
end

def pets
@pets
end

def buy_fish(fish)
@fish = fish
@fish = Fish.new(fish)
@pets[:fishes] << @fish
end

def buy_cat(cat)
@cat = cat
@cat = Cat.new(cat)
@pets[:cats] << @cat
end

def buy_dog(dog)
@dog = dog
@dog = Dog.new(dog)
@pets[:dogs] << @dog
end

def walk_dogs
@pets[:dogs].each {|dog| dog.mood = "happy"}
end

def play_with_cats
@pets[:cats].each {|cat|cat.mood = "happy"}
end

def feed_fish
@pets[:fishes].each {|fish|fish.mood = "happy"}
end

def sell_pets
 @pets.each do |species,name_array|
     name_array.each {|name| name.mood = "nervous"}
     end 
  @pets.clear
end

def list_pets
   "I have #{@pets[:fishes].size} fish, #{@pets[:dogs].size} dog(s), and #{@pets[:cats].size} cat(s)."
end

end
