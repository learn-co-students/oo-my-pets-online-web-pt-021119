class Owner
  attr_accessor :pets 
  @@all = {}
  
  def initialized
    @pets = {fishes: [], cats: [], dogs: []}
   end  
   
  
  def buy_cat(name)
  cat = Cat.new(name)
  end 
  
  def buy_dog(name)
  dog = Dog.new(name)
  end
  
  def buy_fish(name)
  fish = Fish.new(name)
  end
end