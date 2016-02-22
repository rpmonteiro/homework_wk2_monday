class Bear

  attr_accessor :food

  def initialize(name, type, food)
    @name = name
    @type = type
    @food = food
  end

  def roar
    return "Miau?"
  end

  def imma_gonna_eat_you
    return "RRRROAAAARRRRR!!!!!!!!!"
  end

  def remove_fish_from_river(river, *fish)
    poor_fishy = []
    poor_fishy << fish.each { |victim| river.delete(victim) }
    return poor_fishy
  end

  def add_fish_to_tummy(*fish)
    fish.each do |fish|
      @food << fish
    end
    return @food
  end

end