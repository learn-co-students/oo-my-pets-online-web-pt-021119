class Owner
  attr_reader :species  #can't change its species, can ONLY read NOT write
  attr_writer :owner, :fish, :cat, :dog


  def initialize(species)
    @species = species  #automatically requires Owner to define the pets' species
  end

  @@all = [] #stores all [instance of Owner] that have been created
  @@count = [] #stores the [number of owners] that have been created

  def self.all  #Class Method
    @@all      #Returns all instance of Owner that have been created
  end

  def self.count  #Class Method
    #Code here    #Returns the [number] of owners that have been created
  end

  def self.reset_all  #Class Method
    #Code here        #can reset (reassign) the owners that have been created
  end

  def say_species(species)
    "#{species}"
  end
end
