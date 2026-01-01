# Given an integer array nums, return the length of the longest strictly increasing subsequence.


nums1 = [10, 9, 2, 5, 3, 7, 101, 18]
nums2 = [10, 50, 49, 51, 3, 47, 2, 45]

#Approach 1:

# def longest_incr_sequence(list)
#   result = []
#   min = list[0]
#   max_margin = 0

#   list.each do |item|
#     margin = item - min
#     min = item if min > item

#     if max_margin < margin
#       max_margin = margin
#       result = [min, item]
#     end
#   end
#   result
# end

# p longest_incr_sequence(nums1)
# p longest_incr_sequence(nums2)

#Approach2:

def longest_incr_sequence(nums)
  min = nums[0]
  max_margin = 0
  res = []
  nums.each do |item|
    margin =  item - min
    min = item if item < min
    
    if margin > max_margin
      max_margin = margin
      res = [min, item]
    end
  end
  res
end

p longest_incr_sequence(nums1)
p longest_incr_sequence(nums2)
