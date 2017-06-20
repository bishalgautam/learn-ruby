class Temperature
  # TODO: your code goes here!
  
  def initialize (options = {})
  @options = options
  end
  
  def in_fahrenheit
      @options.key?(:f) ? @options[:f] : (@options[:c] * 9)/ 5.0 + 32
  end
  
  def in_celsius
      @options.key?(:c) ? @options[:c] : ((@options[:f] - 32) * 5 )/9.0
  end
  
  def self.from_celsius(num)
      self.new(:c => num)
  end
  
  def self.from_fahrenheit(num)
      self.new(:f => num)
  end
  
end

class Celsius < Temperature
    def initialize(num, options={})
     @options = options
     @options[:c] = num 
    end
end

class Fahrenheit < Temperature
    def initialize(num, options= {})
        @options = options
        @options[:f] = num
    end
    
end

 