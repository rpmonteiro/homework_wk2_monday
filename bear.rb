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

  def imma_gonna_kill_you
    return "RRRROAAAARRRRR!!!!!!!!!"
  end

  def remove_fish_from_river(river, fish)
    removed_fishy = river.delete(fish)
    return removed_fishy
  end

  def add_fish_to_tummy(fish)
    @food << fish
  end

end