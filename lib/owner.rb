class Owner

  attr_accessor :pets, :name
  attr_reader :species


  @@all = []

  def initialize(species)
    @species = species
    @pets = {fishes:[],
              cats:[],
              dogs:[]
            }

      @@all << self
  end

  def buy_cat(name)
    cat = Cat.new(name)
   @pets[:cats] << cat

  end

  def buy_dog(name)
    dog = Dog.new(name)
   @pets[:dogs] << dog

  end

  def buy_fish(name)
    fish = Fish.new(name)
   @pets[:fishes] << fish

  end


  def self.all
      @@all
  end

  def self.reset_all
    @@all = []
  end

  def self.count
    @@all.length
  end

  def say_species
    "I am a #{self.species}."
  end

  def walk_dogs
    @pets[:dogs].map do |dog|
      dog.mood = "happy"
    end
  end

    def play_with_cats
      @pets[:cats].map do |cat|
        cat.mood = "happy"
      end
    end

      def feed_fish
        @pets[:fishes].map do |fish|
        fish.mood = "happy"
    end
end
    def sell_pets
      @pets.each do |type_of_pet, pet|
        pet.map do |individual|
          individual.mood = "nervous"
    end
  end
    @pets = []
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end
end
