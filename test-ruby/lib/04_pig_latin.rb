def translate(string)
    words = string.split
    vowels = ['a','e','i','o','u']
    result = []
    for word in words
        if vowels.include?(word[0]) 
            result << word + "ay" 
        else 
            
            parts = word.partition(/qu/)
            
            if parts[1] == 'qu'
                result << parts[2] + parts[0] + parts[1] + 'ay'
            else
                idx = 0
                while !vowels.include?(word[idx]) do
                idx += 1
                end
                result << word[idx..word.length-1] + word[0..idx-1] + "ay"
            end
        
        end
    end
    
    return result.join(" ")
end
