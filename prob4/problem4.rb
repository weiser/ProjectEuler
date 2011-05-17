class Problem4
  def initialize()
    @num = 0   
  end
  attr_reader :num
  
  def go(digits)
    smallest = 10**(digits-1)
    largest = 10**(digits)
    for i in (smallest..largest-1)
      for j in (smallest..largest-1)
        if(isPalindrome(i*j) and @num < i*j)        
          @num = i*j
        end
      end
    end
  end
  
  def isPalindrome(num)
    strNum = num.to_s()
    return strNum.reverse == strNum
  end
   
end
