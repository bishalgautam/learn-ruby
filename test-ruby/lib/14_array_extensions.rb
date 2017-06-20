class Array
    def sum
        sum = 0
        self.each do |x|
            sum += x
        end
        return sum
    end
    
    def square
        result = []
        self.each do |x|
            result << x**2
        end
        return result
    end
    
    def square!
        self.map! do |x| 
          x**2
        end
    end
end
