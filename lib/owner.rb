require 'pry'

class Owner
  # code goes here
  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

  def initialize(species)
    @species = species
    @@all << self
    @pets = {:fishes=>[], :dogs=>[], :cats=>[]}
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.length
  end

  def say_species
    return "I am a #{self.species}."
  end

  def pets
    @pets
  end

  def buy_fish(name)
    new_fish = Fish.new(name)
    self.pets[:fishes] << new_fish
  end

  def buy_cat(name)
    new_cat = Cat.new(name)
    self.pets[:cats] << new_cat
  end

  def buy_dog(name)
    new_dog = Dog.new(name)
    self.pets[:dogs] << new_dog
  end

  def walk_dogs
    @pets.each do |pet_type, pet_array|
        if pet_type == :dogs
          pet_array.each do |pet_object|
            pet_object.mood = "happy"
          end
        end
     end
  end

  def play_with_cats
    @pets.each do |pet_type, pet_array|
        if pet_type == :cats
          pet_array.each do |pet_object|
            pet_object.mood = "happy"
          end
        end
     end
  end

  def feed_fish
    @pets.each do |pet_type, pet_array|
        if pet_type == :fishes
          pet_array.each do |pet_object|
            pet_object.mood = "happy"
          end
        end
     end
  end

  def sell_pets
    @pets.each do |pet_type, pet_array|
      pet_array.each do |pet_object|
        pet_object.mood = "nervous"
      end
    pet_array.clear
    end
  end

  def list_pets
    fish_count = self.pets[:fishes].count
    dog_count = self.pets[:dogs].count
    cat_count = self.pets[:cats].count

    "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."
  end
end
