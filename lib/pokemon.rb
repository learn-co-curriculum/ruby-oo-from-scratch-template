class Pokemon
  attr_accessor :name, :trainer, :level
  attr_reader :nickname, :type, :counter
  @@all = []
  @@counter = 0
  def initialize (name, trainer, type, level, nickname = nil)
    @name = name
    @trainer = trainer
    @type = type
    @level = level
    @nickname = nickname
    @@all << self
    @@counter +=1
    @counter = @@counter
  end

  def level_up
    self.level += 1
  end

  def trade_to(new_trainer)
    self.trainer = new_trainer
  end

  def self.find_by_nickname(nickname)
    self.all.find do |pokemon|
      pokemon.nickname == nickname
    end
  end

  def self.find_by_counter(counter)
    self.all.find do |pokemon|
      pokemon.counter == counter
    end
  end


  def self.all
    @@all
  end

end
