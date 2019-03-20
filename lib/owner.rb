# class Owner
#   attr_reader :species
#   attr_accessor :name, :pets, :fish, :dog, :cat
#   @@all = []
#   @@pets = {:fishes => [], :dogs => [], :cats => []}
#   def initialize(species)
#     @species = species
#     @name = name
#     @@all << self
#   end
#   def self.count
#     @@all.length
#   end
#   def self.reset_all
#     @@all.clear
#   end
#   def say_species
#     "I am a human."
#   end
#   def pets 
#   @@pets
  
#   end
#   def buy_fish(fish)
#     @@pets[:fishes] << Fish.new(fish)
#   end
#   def buy_cat(cat)
#     @@pets[:cats] << Cat.new(cat)
    
#   end
#   def buy_dog(dog)
#     @@pets[:dogs] << Dog.new(dog)
#   end
#   def walk_dogs
#     @@pets[:dogs].each do |dog|
#       dog.mood = "happy"
#     end
#     end
#     def play_with_cats
#     @@pets[:cats].each do |cat|
#       cat.mood = "happy"
#     end
#   end
#     def feed_fish
#     @@pets[:fishes].each do |fish|
    
#       fish.mood = "happy"
#     end
#   end
 
#   def sell_pets
#   #   @@pets.each do |pet, arr|
#   #     # arr.collect do |pet|
#   #       pet.mood = "nervous"
#   #     end
#   #     pets.clear
#   # end
#   @pets.each do |type, name_array|
#       name_array.each do |pet|
#         pet.mood = "nervous"
#       end
#     end
#       pets.clear
#   end
#   def list_pets
#     "I have #{pets[:fishes].length} fish, #{pets[:dogs].length} dog(s), and #{pets[:cats].length} cat(s)."
#   end
    
#   def self.all
#     @@all 
#   end
# end


class Owner
  # code goes here
  attr_accessor :name, :pets
  attr_reader :species

  @@owners = []

  def initialize(species, pets = {:fishes => [], :dogs => [], :cats => []})
    @species = species
    @pets = pets
    @@owners << self
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(fish_name)
    @pets[:fishes] << Fish.new(fish_name)
  end

  def buy_cat(cat_name)
    @pets[:cats] << Cat.new(cat_name)
  end

  def buy_dog(dog_name)
    @pets[:dogs] << Dog.new(dog_name)
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
    @pets.each do |type, name_array|
      name_array.each do |pet|
        pet.mood = "nervous"
        #name_array.delete(pet)
      end 
    end
    @pets = {}
  end

  def list_pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end

  def self.all
    @@owners
  end

  def self.reset_all
    @@owners.clear
  end

  def self. count
    @@owners.length
  end
end


