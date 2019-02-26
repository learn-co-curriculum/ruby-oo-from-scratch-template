class Trainer

  @@all = []

  attr_reader :name, :gym_badges

  def initialize(name, gym_badges)
    @name = name
    @gym_badges = gym_badges
    @@all << self
  end

  def catch_pokemon(name, type, level, nickname = nil)
    Pokemon.new(name,self, type, level, nickname)
    "You caught a #{name}!"
  end

  def create_pokedex
    Pokemon.all.select do |pokemon|
      pokemon.trainer == self
    end
  end

  def gym_badges=(badge_count)
    if badge_count > 8
      @gym_badges = 8
    else
      @gym_badges = badge_count
    end
  end

  def defeat_gym
    self.gym_badges += 1
    "#{self.name} now has #{self.gym_badges} Gym Badges!"
  end

  def caught_em_all?
  unique_pokedex =self.create_pokedex.map do |pokemon|
      pokemon.name
    end.uniq
    if unique_pokedex.length > 150
      "You caught 'em all!!"
    else
      "Professor Oak is disappointed!!!"
    end
  end



  def self.all
    @@all
  end
end
