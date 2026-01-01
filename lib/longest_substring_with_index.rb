def longest_sub_string(str)
  seen = {}
  right = 0
  max_len = 0

  str.chars.each_with_index do |char, left|
    if seen.key?(char) && seen[char] >= right
      right = seen[char] + 1
    end

    seen[char] = left
    p "#{left}...#{right}..#{seen}"
    max_len = [max_len, left - right + 1].max
  end

  max_len
end


p longest_sub_string("devdf")
p longest_sub_string("tmmzuxt")
p longest_sub_string("abcabcbb")
p longest_sub_string("zxcvbnmnbvcxjkl")
