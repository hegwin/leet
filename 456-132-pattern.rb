# https://leetcode.com/problems/132-pattern/description/
#
# @param {Integer[]} nums
# @return {Boolean}
def find132pattern(nums)
  return false if nums.length < 3
  #return false if nums.uniq.length < 3

  #nums = nums.chunk{|n| n}.map(&:first)
  length = nums.length
  stack = []

  min = [ nums.first ]
  1.upto(length - 1) do |i|
    min[i] = [ min[i-1], nums[i] ].min
  end

  (length - 1).downto(1) do |j|
    if nums[j] > min[j]
      while stack.any? && stack.last <= min[j] do
        stack.pop
      end

      if stack.any? && stack.last < nums[j]
        return true
      end

      stack.push nums[j]
    end
  end

  false
end
