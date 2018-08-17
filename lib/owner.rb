class Owner

OWNERS = []

  def self.all
    OWNERS
  end #self.all

  def self.reset_all
    OWNERS.clear
  end #self.reset_all

  def self.count
    OWNERS.size
  end


  attr_accessor :pets, :name
  attr_reader :species


  def initialize(species)
    @species = species
    OWNERS << self
    @pets = {:fishes => [], :cats => [], :dogs=> []}

  end #initialize




  def say_species
    "I am a #{self.species}."
  end #species


  def buy_fish(name)
    pets[:fishes] << Fish.new(name)
  end #buy_fish

  def buy_dog(name)
    pets[:dogs] << Dog.new(name)
  end #buy_fish

  def buy_cat(name)
    pets[:cats] << Cat.new(name)
  end #buy_fish

  def walk_dogs
    pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    pets.each do |species, animals|
      animals.each do |animal|
        animal.mood = "nervous"
      end
      animals.clear
    end
  end

  def say_species
    "I am a #{species}."
  end

  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end

end #owner
