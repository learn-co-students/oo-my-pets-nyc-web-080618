require "pry"
class Owner

attr_accessor :pets, :name
attr_reader :owners

@@owners = []


def initialize(pets, species="human", name=nil)
  @pets = {fishes: [], cats: [], dogs: []}
  @@owners << self
  @species = species
  @name = name

end
# binding.pry

def buy_pets
  @pets << self
  # @@owners << self
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

def species
  @species
end

def say_species
  return "I am a #{@species}."
end

def name
  @name
end

def pets
  @pets
end


def buy_fish(new_fish)
  new_fish = Fish.new(new_fish)
  @pets[:fishes] << new_fish
  new_fish
end

def buy_cat(new_cat)
  new_cat = Cat.new(new_cat)
  @pets[:cats] << new_cat
  new_cat
end

def buy_dog(new_dog)
  new_dog = Dog.new(new_dog)
  @pets[:dogs] << new_dog
  new_dog
end

def walk_dogs
  @pets[:dogs].map do |pet|
    pet.mood = "happy"
    # binding.pry
  end
end

def play_with_cats
  @pets[:cats].map do |pet|
    pet.mood = "happy"
  end
end

def feed_fish
  @pets[:fishes].map do |pet|
    pet.mood = "happy"
  end
end

def sell_pets
  @pets[:fishes].map do |pet|
  pet.mood = "nervous"
    @pets[:cats].map do |pet|
    pet.mood = "nervous"
      @pets[:dogs].map do |pet|
      pet.mood = "nervous"
      end
    end
  end
  @pets.clear
end

def list_pets
  # pet_list = []
  #
  # @pets[:fishes].each do |pet|
  #   pet_list << pet.name
  # end
  # @pets[:cats].each do |pet|
  #   pet_list << pet.name
  # end
  # @pets[:dogs].each do |pet|
  #   pet_list << pet.name
  # end
  # pet_list


  return "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."

end




















end # Ends Owner Class

#
