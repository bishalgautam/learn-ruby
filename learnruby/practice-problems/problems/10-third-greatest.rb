# Write a method that takes an array of numbers in. Your method should
# return the third greatest number in the array. You may assume that
# the array has at least three numbers in it.
#
# Difficulty: medium.

def third_greatest(nums)
  max1 = nil
  max2 = nil
  max3 = nil
  
  nums.each do |num|
    if max1 == nil || num > max1 
      max3 = max2
      max2 = max1
      max1 = num
    elsif max2 == nil || num > max2  
      max3 = max2
      max2 = num
    elsif max3 == nil || num > max3 
      max3 = num
    end 
    
  end
  return max3
  
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'third_greatest([5, 3, 7]) == 3: ' +
  (third_greatest([5, 3, 7]) == 3).to_s
)
puts(
  'third_greatest([5, 3, 7, 4]) == 4: ' +
  (third_greatest([5, 3, 7, 4]) == 4).to_s
)
puts(
  'third_greatest([2, 3, 7, 4]) == 3: ' +
  (third_greatest([2, 3, 7, 4]) == 3).to_s
)
