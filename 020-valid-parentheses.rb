# https://leetcode.com/problems/valid-parentheses/description/
#
# @param {String} s
# @return {Boolean}
def is_valid(s)
  before_size = s.size
  return true if before_size.zero?

  after_size = 0

  while before_size != after_size
    before_size = s.size
    s = s.gsub('()', '').gsub('[]', '').gsub('{}', '')
    after_size = s.size
  end

  s.size.zero? ? true : false
end
