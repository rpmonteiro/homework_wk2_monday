require("minitest/autorun")
require("minitest/rg")
require_relative("../bear")
require_relative("../fish")
require_relative("../river")

class TestRiver < MiniTest::Test

  def setup
    salmon = Fish.new('Salmon')
    tuna = Fish.new('Tuna')
    perch = Fish.new('Perch')

    @delicious_three = [salmon, tuna, perch]

    @nile = River.new(@delicious_three)
  end

end