# https://leetcode.com/problems/palindrome-number/description/
#
# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
  return false if x < 0

  arr = x.to_s.split('')

  while x.size > 1
    return false if arr.shift != arr.pop
  end

  return true
end
