class Owner
  attr_accessor :name, :pets
  attr_reader :species

 @@owners =  [ ]

 def initialize(species)
   @species = species
   @@owners << self
   @pets = {:fishes => [], :dogs => [], :cats => []}
 end

 def self.all
   @@owners
 end

 def self.count
   @@owners.size
 end

 def self.reset_all
   @@owners.clear
 end


 def say_species
   "I am a #{self.species}."
 end

 def buy_fish(name)
   new_fish = Fish.new(name)
   @pets[:fishes].push(new_fish)
   new_fish

 end

 def buy_cat(name)
   new_cat = Cat.new(name)
   @pets[:cats].push(new_cat)
   new_cat

 end

 def buy_dog(name)
   new_dog = Dog.new(name)
   @pets[:dogs].push(new_dog)
   new_dog

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
   @pets[:fishes].each do |fish|
     fish.mood = "nervous"
   end

   @pets[:cats].each do |cat|
     cat.mood = "nervous"
   end

   @pets[:dogs].each do |dog|
     dog.mood = "nervous"
   end

   @pets.each do |pet, pets|
     pets.clear
   end

 end


 def list_pets
   "I have #{@pets[:fishes].size} fish, #{@pets[:dogs].size} dog(s), and #{@pets[:cats].size} cat(s)."
 end





end
