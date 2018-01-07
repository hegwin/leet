# @param {Integer[]} nums
# @return {Integer}
def find_max_consecutive_ones(nums)
  max = 0
  con = 0
  # I don't know why
  # To shift each each elements is about 17% faster than to call Array#each
  while nums.any?
    num = nums.shift
    if num == 1
      con += 1
    else
      max = [ max, con ].max
      con = 0
    end
  end
  [ max, con ].max
end
