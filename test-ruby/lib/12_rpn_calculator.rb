class RPNCalculator
  # TODO: your code goes here!
  
  def initialize
    @stack = []
  end
  
  def push(*num)
    num.each do |n|
        stack.push(n)
    end
  end
  
  def value
      stack[-1]
  end
  
  # raise Exception.new ("calculator is empty")
  
  def plus
      if stack.size > 1
          a = stack.pop
          b = stack.pop
          stack.push(a + b)
      else
          raise Exception.new ("calculator is empty")
      end
  end
  
  def minus
      if stack.size > 1
          a = stack.pop
          b = stack.pop
          stack.push(b-a)
      else
          raise Exception.new ("calculator is empty")
      end
  end
  
  def divide 
    if stack.size > 1
        a = stack.pop
        b = stack.pop
        stack.push(b.to_f / a)
    else
        raise Exception.new ("calculator is empty")
    end
  end
  
  def times
    if stack.size > 1
        a = stack.pop
        b = stack.pop
        stack.push(b * a)
    else
        raise Exception.new ("calculator is empty")
    end
  end
  
  def tokens(string)
    divisor = ["*" , "/", "+" ,"-"]
    result = []
    string.split.each do |key|
      if divisor.include?(key)
         if key == "+"
            result << :+
           elsif key == "-"
            result << :-
           elsif key == "/"
            result << :/
           elsif key == "*"
            result << :*
         else
           raise Exception.new ("invalid operator")
         end
      else
        result << (key.to_i)
      end
      
    end
    return result
  end
  
  def evaluate(string)
    divisor = ["*" , "/", "+" ,"-"]
    string.split.each do |key|
      if divisor.include?(key)
         if key == "+"
           self.plus
           elsif key == "-"
           self.minus
           elsif key == "/"
           self.divide
           elsif key == "*"
           self.times
         else
           raise Exception.new ("invalid operator")
         end
      else
        self.push(key.to_i)
      end
      
    end
    return self.value
  end
  
  def stack
      @stack
  end
      
end
