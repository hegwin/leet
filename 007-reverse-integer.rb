# https://leetcode.com/problems/reverse-integer/description/
#
# @param {Integer} x
# @return {Integer}
def reverse(x)

  str = x.to_s
  flag_neg = false
  if str.start_with?('-')
    flag_neg = true
    str = str[1..-1]
  end
  result = str.reverse
  result.insert(0, '-') if flag_neg

  result = result.to_i

  return 0 if result > 2 ** 31 || result < - 2 **31
  result
end
