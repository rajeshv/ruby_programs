def longest_palindromic_substring(str)
  res = ""
  str.length.times do |idx|
    str[0..str.length - idx].length.times do |s_idx|
      sub_str = str[idx..s_idx+idx]
      res = sub_str if is_palindrome(sub_str) && sub_str.length > res.length
    end
  end
  res
end


def is_palindrome(str)
  str.reverse == str
end


p longest_palindromic_substring("qwertyytrewqasd")
p longest_palindromic_substring("babbad")
