# https://leetcode.com/problems/delete-and-earn/description/
#
# @param {Integer[]} nums
# @return {Integer}
def delete_and_earn(nums)
  result = 0
  counts = {}
  nums.each do |num|
    counts[num] ||= 0
    counts[num] += 1
  end

  side_effects = {}
  counts.each do |num, count|
    side_effects[num] = 0
    left = num - 1
    right = num + 1
    if counts[left]
      side_effects[num] += left * counts[left]
    end
    if counts[right]
      side_effects[num] += right * counts[right]
    end
  end

  side_effects = side_effects.sort_by {|_, v| v }

  side_effects.each do |k, v|
    if counts[k]
      result += k * counts[k]
      counts[k], counts[k-1], counts[k+1] = nil, nil, nil
    end
  end

  result
end
