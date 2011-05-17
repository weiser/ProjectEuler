require "problem3"
require "test/unit"

class TestProblem2 < Test::Unit::TestCase 
  def test_largestPrime
    p3 = Problem3.new(13195)
    p3.go
    
    assert_equal(29, p3.largestPrimeDivisor)
    
    puts "primes in 13195: #{p3.primes}"
    
    p3 = Problem3.new(600851475143)
    p3.go
    assert_equal(6857, p3.largestPrimeDivisor)
  end
end
