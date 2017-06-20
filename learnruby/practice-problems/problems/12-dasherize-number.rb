# Write a method that takes in a number and returns a string, placing
# a single dash before and after each odd digit. There is one
# exception: don't start or end the string with a dash.
#
# You may wish to use the `%` modulo operation; you can see if a number
# is even if it has zero remainder when divided by two.
#
# Difficulty: medium.

def dasherize_number(num)
  result = String.new 
  
  while num > 0 do
    digit = num % 10
    if digit % 2 != 0
      result = "-" + digit.to_s + "-" + result
    else
      result = digit.to_s + result
    end
    num = num / 10
  end
 # puts result
  result = result.gsub("--", "-")
#  puts result
  
  
  
  if result[0] == "-" || result[len-1] == "-"
    len = result.length
    if result[0] == "-" 
      result = result[1..len-1]
    end
    len = result.length
    if result[len-1] == "-"
      result = result[0..len-2]
    end
  end
 # puts result
  return result  
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'dasherize_number(203) == "20-3": ' +
  (dasherize_number(203) == '20-3').to_s
)
puts(
  'dasherize_number(303) == "3-0-3": ' +
  (dasherize_number(303) == '3-0-3').to_s
)
puts(
  'dasherize_number(333) == "3-3-3": ' +
  (dasherize_number(333) == '3-3-3').to_s
)
puts(
  'dasherize_number(3223) == "3-22-3": ' +
  (dasherize_number(3223) == '3-22-3').to_s
)
