def measure (count = 1)
    
    timeElapsed = 0
    count.times do
        startTime  = Time.now
    
    yield
    
        endTime = Time.now 
        
        timeElapsed += (endTime - startTime) 
    end
    
    return timeElapsed/count
    
end
