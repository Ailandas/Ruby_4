load "antras.rb" #Uzsikraunu faila, kuri testuosiu
require 'test/unit' #Test framework

class TestSimpleOutput < Test::Unit::TestCase
  def test_simple
    assert_equal("112233",double("123")) #kaip stringai nes uzduotyje buvo
    # formuluote, kad nuskaitymas is klaviaturos
    assert_equal("99554433",double("9543")) #antras case
    assert_equal("669911",double("691"))
  end
end
