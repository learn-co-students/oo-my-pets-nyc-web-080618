require 'pry'
class Owner
  @@all = []

 attr_reader :species
 attr_accessor :name, :pets
# class methods
  def initialize(species)
    @species = species
    @@all << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all.clear
  end
# instance methods
  def say_species
    "I am a #{@species}."
  end

  def pets
    @pets
  end

  def buy_fish(fish_name)
    self.pets[:fishes].push(Fish.new(fish_name))
  end

  def buy_cat(cat_name)
  #  binding.pry
    self.pets[:cats].push(Cat.new(cat_name))
  end


  def buy_dog(dog_name)
    self.pets[:dogs].push(Dog.new(dog_name))
  end

  def walk_dogs
    @pets[:dogs][0].mood = "happy"
  end

  def play_with_cats
    @pets[:cats][0].mood = "happy"
  end

  def feed_fish
    @pets[:fishes][0].mood = "happy"
  end

  def sell_pets
   dog=pets[:dogs][0]
   cat=pets[:cats][1]
   fish=pets[:fishes][0]
    dog.mood="nervous"
    cat.mood="nervous"
    fish.mood="nervous"
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def list_pets
    "I have #{pets[:fishes].length} fish, #{pets[:dogs].length} dog(s), and #{pets[:cats].length} cat(s)."
  end

end
