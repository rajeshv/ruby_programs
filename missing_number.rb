# Given an array nums containing n distinct numbers in the range [0, n], return the only number in the range that is missing from the array.

nums = [9,6,4,2,3,5,7,8,0]
n = 9


def missing_number(n, nums_arr)
  total = (n * (n + 1)) / 2
  nums_total = 0
  nums_arr.each do |i|
    nums_total += i
  end

  total - nums_total
end

puts missing_number(9, nums)
