class Owner
  attr_reader :name, :species 
  
  @@all = []
  
  def initialize (name, species = "human")
    @name = name
    @species = species
    @@all << self
  end
  
  def say_species
    "I am a #{@species}."
  end
  
  def Owner.all
    @@all 
  end
  
  def Owner.count
    @@all.length
  end
  
  def Owner.reset_all
    @@all.clear
  end
  
  def cats 
    Cat.all.select {|cat| cat.owner == self}
  end
  def dogs 
    Dog.all.select {|dog| dog.owner == self}
  end
  
  def buy_cat (cat_name)
    #cat = Cat.new(cat_name, self)
  end
end























