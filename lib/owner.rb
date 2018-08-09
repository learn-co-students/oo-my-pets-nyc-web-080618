#cat, dog, fish will belong to this class
# require_relative 'cat'
# require_relative 'dog'
# require_relative 'fish'
require "pry"

class Owner
  # code goes here

  attr_accessor :name, :pets

  @@all = []

  def initialize(name)
    @name = name
    @pets = {:fishes=>[], :dogs=>[], :cats=>[]}
    @@all << self
  end
  #binding.pry

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

   def self.reset_all
    @@all.clear
  end

  def species
    self.name
  end

  def say_species
    "I am a #{species}."
  end

  def select_fish(name)
    Fish.all.select do |fish|
      fish.name == name
    end
  end

  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    self.pets[:dogs][0].mood = "happy"
  end

  def play_with_cats
    self.pets[:cats][0].mood = "happy"
  end

  def feed_fish
    self.pets[:fishes][0].mood = "happy"
  end

  def sell_pets
      self.pets.map do |key, value|
        value.each do |array|
          array.mood = "nervous"
        end
      end
      @pets = {:fishes=>[], :dogs=>[], :cats=>[]}
    end

    def list_pets
       fish_count = pets[:fishes].length
       dog_count = pets[:dogs].length
       cat_count = pets[:cats].length

       return "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."
    end

end #end of class
