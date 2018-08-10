require "pry"
## have to look at the spec/owner_spec.rb to ensure your methods'
## name is same as the required one.

class Owner
  attr_accessor :name, :pets
  attr_reader :species

  @@owners = []

  def initialize(name, species = "human")
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}
    @@owners << self
    @species = species
  end

  def self.all
    @@owners
  end

  def self.count
    @@owners.count
  end

  def self.reset_all
    @@owners.clear
  end

  def say_species
    "I am a #{@species}."
  end

  def pets
    @pets
  end

  def buy_fish(name)
    new_fish = Fish.new(name)
    @pets[:fishes] << new_fish
    new_fish
  end

  def buy_cat(name)
    new_cat = Cat.new(name)
    @pets[:cats] << new_cat
    new_cat
  end

  def buy_dog(name)
    new_dog = Dog.new(name)
    @pets[:dogs] << new_dog
    new_dog
  end

  def walk_dogs
    @pets[:dogs].map {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].map do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].collect {|fish| fish.mood = "happy"}
  end

  def sell_pets
    @pets[:dogs].map {|dog| dog.mood = "nervous"}
    @pets[:cats].map {|cat| cat.mood = "nervous"}
    @pets[:fishes].map {|fish| fish.mood = "nervous"}
    @pets.clear
  end

  # def sell_pets
  #   @pets[:dogs].map do |dog|
  #    dog.mood = "nervous"
  #   end
  #   @pets[:cats].map do |cat|
  #    cat.mood = "nervous"
  #   end
  #   @pets[:fishes].map do |fish|
  #    fish.mood = "nervous"
  #   end
  #   @pets.clear
  # end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end

# binding.pry
end ## end of the class
