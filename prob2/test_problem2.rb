require "problem2"
require "test/unit"

class TestProblem2 < Test::Unit::TestCase 
  def test_sum2evenFibNumbers
    p2 = Problem2.new(10)
    p2.go
    #out of the first ten fibonnacci numbers, which are even, are 2,8,34.  they sum to 44
    assert_equal(44, p2.total)
    
    p2 = Problem2.new(4000000)
    p2.go
    assert_equal(4613732, p2.total)
  end
end
