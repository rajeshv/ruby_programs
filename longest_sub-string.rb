require "byebug"

def longest_sub_string_using_index(word)
  hsh = {}
  longest = 0
  longest_sub = ""
  word.chars.each_with_index do |ret, i|
    if last_indx = hsh[ret]
      m = i - last_indx
      if longest < m
        longest = m
        longest_sub = word[last_indx..i]
      end
    else
      hsh={}  
    end
    hsh[ret] = i
  end
 [longest, longest_sub]
end

p longest_sub_string_using_index("Mississippi")
p longest_sub_string_using_index("longest_sub_string")

def longest_sub_string_using_hash(word)
  hsh = {}
  longest = 0
  longest_sub = ""
  word.chars.each_with_index do |ret, i|
    if hsh[ret]
      hsh[ret] = i - hsh[ret]
    else
      hsh[ret] = i
    end
    longest = hsh[ret] if hsh[ret] > longest
  end
  longest
end

p longest_sub_string_using_hash("Mississippi")
p longest_sub_string_using_hash("longest_sub_string")

def longest_sub_string_using_hash_and_margin(word)
  return if !word.is_a?(String) && word.is_empty?
  hsh = {}
  longest = 0
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
  [longest, longest_sub]
end

p longest_sub_string_using_hash_and_margin("Mississippi")
p longest_sub_string_using_hash_and_margin("longest_sub_string")
