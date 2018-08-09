require 'pry'
class Owner
  attr_accessor :name, :pets
  attr_reader :species
  # code goes here
  @@all = []
  @@count = 0
  # @@pets = {
  #
  # }
 def initialize(species)
   @species = species
   @@all << self
   @@count += 1
   @pets= {fishes: [], dogs: [], cats: []}
end
  def self.count
    @@count
  end
  def self.reset_all
    @@count= 0
  end
  def self.all
    @@all
  end
  def say_species
    "I am a #{self.species}."
  end
  def buy_fish(name)
    fish = Fish.new(name)
    self.pets[:fishes] << fish
  end
  def buy_cat(name)
    cat = Cat.new(name)
    self.pets[:cats] << cat
  end
  def buy_dog(name)
    dog = Dog.new(name)
    self.pets[:dogs] << dog
  end
  def walk_dogs
    self.pets[:dogs].map do |dog|
      dog.mood = "happy"
    end
  end
  def play_with_cats
    self.pets[:cats].map do |cat|
      cat.mood = "happy"
    end
 end
    def feed_fish
      self.pets[:fishes].map do |fish|
        fish.mood = "happy"
      end
    end
     def sell_pets
       self.pets.map do |species, pets|
         pets.map do |pet|
           pet.mood = "nervous"
         end
       end
       @pets = {fishes: [], dogs: [], cats: []}
     end
     def list_pets
       "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
     end
end
