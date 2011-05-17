require "problem4"
require "test/unit"

class TestProblem4 < Test::Unit::TestCase 
  def test_palindromeNumber
    p4 = Problem4.new()
    p4.go(2)
    assert_equal(9009, p4.num)
    
    p4 = Problem4.new()
    p4.go(3)
    assert_equal(906609, p4.num)
  end
end
