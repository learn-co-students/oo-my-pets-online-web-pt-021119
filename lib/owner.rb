class Owner
  
  @@all = []
  
  attr_accessor :name, :pets
  attr_reader :species
  
  def initialize(species)
    @species = species
    @@all << self
    @pets = {:fishes => [], :dogs => [], :cats=> []}
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
    @pets[:dogs].collect { |dog| dog.mood = "happy" }
  end
  
  def play_with_cats
    @pets[:cats].collect { |cat| cat.mood = "happy" }
  end
  
  def feed_fish
    @pets[:fishes].collect {|fish| fish.mood = "happy"}
  end
  
  def sell_pets
    @pets.each { |k, v| 
      v.each do |pet| pet.mood = "nervous"
    end
     v.clear
    }
  end
  
  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end
  
  # describe "#walk_dogs" do
  # it "walks the dogs which makes the dogs' moods happy" do
  #   dog = Dog.new("Daisy")
  #   owner.pets[:dogs] << dog
  #   owner.walk_dogs
  #   expect(dog.mood).to eq("happy")
  # end
  
end