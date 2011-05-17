class Problem3
  def initialize(num)
    @num = num    
    @primes = Array(1){1}
    @largestPrimeDivisor = -1
  end
  
  attr_reader :largestPrimeDivisor, :primes
  
  def go
    n = @num
    possibleDivisor = 1
    while n > 1 do
      if(n!=possibleDivisor and n%possibleDivisor==0)
        if(isPrime(possibleDivisor) and possibleDivisor > @largestPrimeDivisor)
          @largestPrimeDivisor = possibleDivisor
          n = n % @largestPrimeDivisor
        end
      end
      possibleDivisor+=1
    end
  end
  
  def isPrime(n)
    if n < 0
      return false
    end

    for prime in @primes
      if(n%prime==0 and n!=prime and prime > 1)
        return false
      end
    end

    @primes = @primes +[n]
    return true
  end
  
  
end
