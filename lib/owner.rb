require "pry"
class Owner
  # code goes here
  attr_accessor :owner, :name, :pets
  attr_reader

  @@all = []
  @@count = 0

  def initialize(owner)
    @owner = owner
    @@all << self
    @@count += 1
    @name = name
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def self.count
    @@count
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all = []
    @@count = 0
  end

  def species
    self.owner
  end

  def say_species
    return "I am a #{self.owner}."
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
    @pets[:dogs].map{|dog| dog.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].map{|cat| cat.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].map{|fish| fish.mood = "happy"}
  end

  def sell_pets
    @pets[:dogs].map{|dog| dog.mood = "nervous"}
    @pets[:cats].map{|cat| cat.mood = "nervous"}
    @pets[:fishes].map{|fish| fish.mood = "nervous"}
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def list_pets
    num_fish = @pets[:fishes].count
    num_dogs = @pets[:dogs].count
    num_cats = @pets[:cats].count
    return "I have #{num_fish} fish, #{num_dogs} dog(s), and #{num_cats} cat(s)."
  end

end
