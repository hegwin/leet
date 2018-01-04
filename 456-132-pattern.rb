# https://leetcode.com/problems/132-pattern/description/
#
# @param {Integer[]} nums
# @return {Boolean}
def find132pattern(nums)
  result = false
  nums.squeeze!
  length = nums.length
  return false if length < 3

  0.upto(length - 3) do |i|
    (i+1).upto(length -2) do |j|
      (j+1).upto(length -1) do |k|
        if nums[i] < nums[k] && nums[k] < nums[j]
          return true
        end
      end
    end
  end

  result
end
