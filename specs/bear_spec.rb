require("minitest/autorun")
require("minitest/rg")
require_relative("../bear")
require_relative("../fish")
require_relative("../river")

class TestBear < MiniTest::Test

  def setup
    @winnie_the_pooh = Bear.new('Winnie The Pooh', 'Honey Lover', [])
    @gummy_bear = Bear.new('Gummy Bear', 'Sugar Maniac', [])
    @rufus = Bear.new('Rufus', 'Grizzly', [])

    @salmon = Fish.new('Salmon')
    @tuna = Fish.new('Tuna')
    @perch = Fish.new('Perch')

    @nile = [@salmon, @tuna, @perch]
  end

  def test_roar
    assert_equal("Miau?", @rufus.roar)
  end

  def test_evil_roar
    assert_equal("RRRROAAAARRRRR!!!!!!!!!", @gummy_bear.imma_gonna_eat_you)
  end

  def test_remove_fish_from_river
    assert_equal(@salmon, @rufus.remove_fish_from_river(@nile, @salmon))
    assert_equal(@tuna, @gummy_bear.remove_fish_from_river(@nile, @tuna))
  end

  def test_add_fish_to_tummy
    assert_equal([@salmon], @rufus.add_fish_to_tummy(@salmon))
    assert_equal([@tuna, @perch], @winnie_the_pooh.add_fish_to_tummy([@tuna, @perch]))
  end

end