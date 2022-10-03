require "byebug"

# def longest_sub_string_using_index(word)
#   hsh = {}
#   longest = 0
#   longest_sub = ""
#   word.chars.each_with_index do |ret, i|
#     if last_indx = hsh[ret]
#       m = i - last_indx
#       if longest < m
#         longest = m
#         longest_sub = word[last_indx..i]
#       end
#       hsh = {}
#     else
#       hsh[ret] = i
#     end
#   end
#   [longest, longest_sub]
# end

# p "1....."
# p longest_sub_string_using_index("Mississippi")
# p longest_sub_string_using_index("longest_sub_string")


# def longest_sub_string_using_hash_only(word)
#   return if !word.is_a?(String) && word.is_empty?
#   hsh = {}
#   longest = 0
#   longest_sub = ""
#   sub_string = ""
#   word.chars.each_with_index do |ret, i|
#     sub_string += ret
#     if hsh[ret]
#       hsh = {}
#       if longest_sub.length < sub_string.length
#         longest_sub = sub_string
#         sub_string = ret
#       end
#     end
#     hsh[ret] = i
#   end
#   [longest, longest_sub]
# end

# p "2....."
# p longest_sub_string_using_hash_only("Mississippi")
# p longest_sub_string_using_hash_only("longest_sub_string")


# # def longest_sub_string_using_hash(word)
# #   hsh = {}
# #   longest = 0
# #   longest_sub = ""
# #   word.chars.each_with_index do |ret, i|
# #     if hsh[ret]
# #       hsh[ret] = i - hsh[ret]
# #     else
# #       hsh[ret] = i
# #     end
# #     longest = hsh[ret] if hsh[ret] > longest
# #   end
# #   longest
# # end

# def longest_sub_string_using_hash(word)
#   uniq_hash = {}
#   uniq_count, result = 0, 0
#   res_arr = []
#   word.each_char do |char|
#     if uniq_hash[char]
#       uniq_hash = {}
#       uniq_count = 0
#     else
#       uniq_hash[char] = char
#       uniq_count += 1
#     end
#     if uniq_count > result
#       result = uniq_count
#       res_arr = uniq_hash.keys
#     end
#   end
#   [result, res_arr]

# end

# p "3....."
# p longest_sub_string_using_hash("Mississippi")
# p longest_sub_string_using_hash("longest_sub_string")


def longest_sub_string_using_hash_and_margin(word)
  return if !word.is_a?(String) && word.is_empty?
  hsh = {}
  margin, longest = 0, 0
  longest_sub = ""
  word.chars.each_with_index do |ret, i|
    if hsh[ret]
      margin = 0
      hsh = {}
    else
      margin += 1
      hsh[ret] = i
    end
    
    p margin
    if margin > longest
      longest = margin
      longest_sub = hsh.keys.join
    end
  end
  longest_sub
end

p "4....."
p longest_sub_string_using_hash_and_margin("Mississippi")
p longest_sub_string_using_hash_and_margin("longest_sub_string")
