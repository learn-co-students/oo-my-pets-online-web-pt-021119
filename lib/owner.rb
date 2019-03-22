require 'pry'

class Owner

  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
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

  def species
    @species = "human"
  end

  def say_species
    "I am a #{species}."
  end

  def pets
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def buy_fish(name)
    new_fish  = Fish.new(name)
    new_fish.owner = self
    @pets = @pets.each do |animal, animal_list|
      if animal == :fishes
        @pets[:fishes] << new_fish
      end
    end
    pets = @pets
  end
end
