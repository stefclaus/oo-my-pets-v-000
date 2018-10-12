class Owner

attr_accessor :name, :pets, :fish 
attr_reader :species 

@@all = []
@@count = 0 


def initialize(name) 
  @name = name 
  @@all << self 
  @@count += 1
  @species = "human"
  @pets = {:cats => [], :dogs => [], :fishes => [] }
end 

def say_species 
  "I am a human." 
end 

def self.all
  @@all 
end 

def self.reset_all
  @@all = []
  @@count = 0 
end 

def self.count 
  @@count 
end 


def buy_fish(name)
  new_fish = Fish.new(name)
  @pets[:fishes] << new_fish
end 

 def buy_cat(name)
  new_cat = Cat.new(name)
  @pets[:cats] << new_cat
end 

def buy_dog(name)
  new_dog = Dog.new(name)
  @pets[:dogs] << new_dog 
end 

def walk_dogs 
  @pets.mood="Happy"
end 


end