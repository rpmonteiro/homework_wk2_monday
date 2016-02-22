require("minitest/autorun")
require("minitest/rg")
require_relative("../bear")
require_relative("../fish")
require_relative("../river")

class TestBear < MiniTest::Test

  def setup
    @winnie_the_pooh = Bear.new('Winnie The Pooh', 'Honey Lover')
    @gummy_bear = Bear.new('Gummy Bear', 'Sugar Maniac')
    @rufus = Bear.new('Rufus', 'Grizzly')
  end

  def test_roar
    assert_equal("Miau?", @rufus.roar)
  end

  def test_evil_roar
    assert_equal("RRRROAAAARRRRR!!!!!!!!!", @gummy_bear.imma_gonna_kill_you)
  end

end