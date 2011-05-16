require "problem1"
require "test/unit"

class TestProblem1 < Test::Unit::TestCase 
  def test_sumNumbersMod3OrMod5
    p1 = Problem1.new(10)
    p1.go
    assert_equal(p1.total, 23)
  end
end

