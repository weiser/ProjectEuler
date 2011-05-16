class Problem1
  def initialize(num)
    @num = num
    @total = 0
  end
  
  attr_reader :total
  
  def go
    @total = 0
    for n in (1..@num-1)
      if n%3==0 or n%5==0
        @total += n
      end
    end
  end
  
end
