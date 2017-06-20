# Write a method that takes an array of numbers. If a pair of numbers
# in the array sums to zero, return the positions of those two numbers.
# If no pair of numbers sums to zero, return `nil`.
#
# Difficulty: medium.

def two_sum(nums)
  result = []
  index = 0
  
  while index < nums.length do
    index1 = index + 1
    while index1 < nums.length do
      if nums[index] == -nums[index1]
        result << index
        result << index1
      end  
      index1 += 1
    end
    index +=1
  end
  return result.length != 0 ? result : nil 
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'two_sum([1, 3, 5, -3]) == [1, 3]: ' + (two_sum([1, 3, 5, -3]) == [1, 3]).to_s
)
puts(
  'two_sum([1, 3, 5]) == nil: ' + (two_sum([1, 3, 5]) == nil).to_s
)
