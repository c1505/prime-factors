require 'pry'
class PrimeFactors
  
  def self.for(arg)
    @@array_of_factors = []
    return [] if arg < 2
    numerator = arg
    
    numerator = self.one_time(numerator)
    unless numerator == 1
      numerator = self.one_time(numerator)
    end
    @@array_of_factors
    
  end
  
  def self.one_time(numerator)
    divisor = 2
    until numerator % divisor == 0
      divisor += 1
    end
    @@array_of_factors << divisor
    numerator / divisor
  end
end