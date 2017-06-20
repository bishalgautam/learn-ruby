# Write a method that takes a string in and returns true if the letter
# "z" appears within three letters **after** an "a". You may assume
# that the string contains only lowercase letters.
#
# Difficulty: medium.

def nearby_az(string)
    index = 0
    ind1 = nil
    while index < string.length do 
        if string[index] == 'a'
            ind1 = index
            break
        end
        index += 1 
    end
    
   ind2 = nil
   if ind1 != nil
       ind2 = ind1 + 1
       while ind2 <= ind1 + 3 do
           if string[ind2] == 'z'
               return true
           end
            ind2 += 1
       end
       ind1 += 1
   end 
  
 return false
end


# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('nearby_az("baz") == true: ' + (nearby_az('baz') == true).to_s)
puts('nearby_az("abz") == true: ' + (nearby_az('abz') == true).to_s)
puts('nearby_az("abcz") == true: ' + (nearby_az('abcz') == true).to_s)
puts('nearby_az("a") == false: ' + (nearby_az('a') == false).to_s)
puts('nearby_az("z") == false: ' + (nearby_az('z') == false).to_s)
puts('nearby_az("za") == false: ' + (nearby_az('za') == false).to_s)
