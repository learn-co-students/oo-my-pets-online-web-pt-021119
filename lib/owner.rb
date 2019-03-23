class Owner
  @@all = []

  attr_accessor :name, :pets
  attr_reader :species

  # ----Instance Methods----
  def initialize(species)
    @species = species
    @@all << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(fish_name)
    # Shoverl new dog instance to @pets hash, :fishes array
    @pets[:fishes] << Fish.new(fish_name)
  end

  def buy_cat(cat_name)
    # Shoverl new dog instance to @pets hash, :cats array
    @pets[:cats] << Cat.new(cat_name)
  end

  def buy_dog(dog_name)
    # Shoverl new dog instance to @pets hash, :dogs array
    @pets[:dogs] << Dog.new(dog_name)
  end

  def walk_dogs
    # Go through the @pets hash and for each fish changed the dogs mood to happy
    @pets[:dogs].each {|d| d.mood = "happy"}
  end

  def play_with_cats
    # Go through the @pets hash and for each fish changed the cats mood to happy
    @pets[:cats].each {|c| c.mood = "happy"}
  end

  def feed_fish
    # Go through the @pets hash and for each fish changed the fishes mood to happy
    @pets[:fishes].each {|f| f.mood = "happy"}
  end

  def sell_pets
    # Go through the @pets hash and down to the very pet and set the pets mood to nervous
    @pets.each do |animal, type|
      type.each do |pet|
        pet.mood = "nervous"
      end
      type.clear
    end
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end

  # ----Class Methods----
  def self.all
    @@all
  end

  def self.count
    @@all.size
  end

  def self.reset_all
    @@all.clear
  end
end