require 'pry'
class PrimeFactors
  
  def self.for(arg)
    @@array_of_factors = []
    return [] if arg < 2
    @@numerator = arg
    count = 0
    
    until @@numerator == 1 || count == 20
      @@numerator = self.one_time
      count += 1
    end
    @@array_of_factors

  end
  
  def self.one_time
    divisor = 2
    until @@numerator % divisor == 0
      divisor += 1
    end
    @@array_of_factors << divisor
    @@numerator = @@numerator / divisor
  end
end