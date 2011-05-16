class Problem2
  def initialize(num)
    @num = num
    @total = 0
    @fibNumbers = Array.new(@num) {-1}
  end
  
  attr_reader :total
  
  def go
    @total  =0
    for n in (1..@num)
      fib_n = nthFibNumber(n)
      if fib_n%2==0
        @total += fib_n
      end
      #exit the function if the fibonnacci number is more than 4 million
      if fib_n > 4000000
        return
      end
    end
  end
  
  def nthFibNumber(n)
    #the first wo fibonacci numbers are 1.
    if n <= 2
      @fibNumbers[n] = 1
      return 1
    else
      if @fibNumbers[n-1] > -1 and @fibNumbers[n-2] > -1
        @fibNumbers[n] = @fibNumbers[n-1] + @fibNumbers[n-2]
        return @fibNumbers[n]
      else
        @fibNumbers[n] = nthFibNumber(n-1) + nthFibNumber(n-2)
        return @fibNumbers[n]
      end
    end
  end
  
end
