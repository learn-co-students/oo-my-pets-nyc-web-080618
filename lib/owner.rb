require 'pry'
class Owner
  attr_reader :species
  attr_accessor :name, :pets

  @@owners = []
  @@owners_count = 0

  def initialize(name)
    @species = "human"
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}
    @@owners << self
    @@owners_count += 1
  end

  def self.all
    @@owners
  end

  def self.count
    @@owners_count
  end

  def self.reset_all
    @@owners.clear
    @@owners_count = 0
  end

  def say_species
    "I am a human."
  end

  def buy_fish(fish_name)
    fish = Fish.new(fish_name)
    self.pets[:fishes] << fish
  end

  def buy_cat(cat_name)
    cat = Cat.new(cat_name)
    self.pets[:cats] << cat
  end

  def buy_dog(dog_name)
    dog = Dog.new(dog_name)
    self.pets[:dogs] << dog
  end

  def walk_dogs
    self.pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    self.pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    self.pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    self.pets.each do |species, pets|
      pets.each do |pet|
        pet.mood = "nervous"
      end
      pets.clear
    end
  end

  def list_pets
    "I have #{self.pets[:fishes].length} fish, #{(self.pets[:dogs]).length} dog(s), and #{(self.pets[:cats]).length} cat(s)."
  end

end
