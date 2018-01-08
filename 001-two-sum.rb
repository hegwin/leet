# https://leetcode.com/problems/two-sum/description/
# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  nums.each_with_index do |num, i|
    nums[(i+1)..-1].each_with_index do |addition, j|
      return [i, i + 1 + j] if num + addition == target
    end
  end
end
