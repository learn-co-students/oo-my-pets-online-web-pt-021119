class Owner
	@@all = []
	attr_accessor :pets, :name
	attr_reader :species

	def self.all
		@@all
	end

	def self.count
		@@all.size
	end

	def self.reset_all
		@@all.clear
	end

	def initialize(name, species = 'human')
		@name = name
		@species = species
		@pets = {fishes: [], dogs: [], cats: []}
		@@all << self
	end

	def say_species
		"I am a #{species}."
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
		@pets[:dogs].each {|dog| dog.mood = 'happy'}
	end

	def play_with_cats
		@pets[:cats].each {|cat| cat.mood = 'happy'}
	end

	def feed_fish
		@pets[:fishes].each {|fish| fish.mood = 'happy'}
	end

	def sell_pets
		@pets.each {|species, pets|
			pets.each {|pet|
				pet.mood = 'nervous'
			}
			pets.clear
		}
	end

	def list_pets
		"I have #{@pets[:fishes].size} fish, #{@pets[:dogs].size} dog(s), and #{@pets[:cats].size} cat(s)."
	end

end




