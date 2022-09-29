require "byebug"
# hello = {}
# longest = 0
# longest_sub = ""
# word.chars.each_with_index do |ret, i|
#   if last_indx = hello[ret]
#     m = i - last_indx
#     if longest < m
#       longest = m 
#       longest_sub = word[last_indx..i]
#     end
#   end
#   hello[ret] = i
# end

# EKSFORG



# hsh = {}
# longest = 0
# longest_sub = ""
# word.chars.each_with_index do |ret, i|
#   if hsh[ret]
#     hsh[ret] = i - hsh[ret]
#   else
#     hsh[ret] = i
#   end
#   longest = hsh[ret] if hsh[ret] > longest
# end

word = "GEEKSFORGEEKS"
hsh = {}
longest = 1
longest_sub = ""
margin = 0
word.chars.each_with_index do |ret, i|
  if hsh[ret]
    margin = 1
    hsh = {}
  end
  margin += 1
  if margin > longest
    longest = margin
    longest_sub += ret
  end
  hsh[ret] = i
end
p longest
p longest_sub
