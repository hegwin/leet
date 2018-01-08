# https://leetcode.com/problems/two-sum/description/
# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  hash = {}

  nums.each_with_index do |num, index|
    complement = target - num
    return [ hash[complement], index ] if hash[complement]
    hash[num] = index
  end
end
