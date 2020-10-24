load "pirmas.rb" # Uzlaudinu faila, kuri testuosiu..
require 'test/unit'
class TestSimpleOutput < Test::Unit::TestCase
  def test_simple
    assert_equal(9676800,funkcija()) #Senos uzduoties rezultatas-fixed number
  end
end
