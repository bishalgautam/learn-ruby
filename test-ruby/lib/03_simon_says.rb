def echo(string)
    return string
end


def shout(string)
    return string.upcase
end

def repeat(string, count=2)
    result = ""
    1.upto(count) do result += "#{string} " end
    return result.strip
    
end

def start_of_word(string, num)
    return string.slice(0, num)
end

def first_word(string)
    words = string.split
    return words[0]
end


def titleize(string)
    result = ''
    words = string.split
    little_words = ["and", "of", "over", "the" ,"is", "a"]
    words.each_with_index do |val, index|
        #if !little_words.include?(val) 
            val =  little_words.include?(val)  && index > 0 ? val : val.capitalize
        #end
        result += "#{val} "
    end
    
    return result.strip
end

