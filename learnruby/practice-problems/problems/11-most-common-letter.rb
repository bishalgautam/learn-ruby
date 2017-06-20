# Write a method that takes in a string. Your method should return the
# most common letter in the array, and a count of how many times it
# appears.
#
# Difficulty: medium.

def most_common_letter(string)
  idx1 = 0
  maxlen = 0
  maxchar = nil
  result = []
  while idx1 < string.length do
    idx2 = idx1 + 1 
    count = 1
    while(idx2 < string.length) do
      if string[idx1] == string[idx2]
        count += 1
      end
      idx2 += 1
    end
    if maxlen < count
      maxlen = count
      maxchar = string[idx1]
    end
    idx1 += 1
  end
  result << maxchar
  result << maxlen
 # puts result
  return result
end
# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'most_common_letter("abca") == ["a", 2]: ' +
  (most_common_letter('abca') == ['a', 2]).to_s
)
puts(
  'most_common_letter("abbab") == ["b", 3]: ' +
  (most_common_letter('abbab') == ['b', 3]).to_s
)
