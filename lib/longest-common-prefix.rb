require "byebug"
# # Write a function to find the longest common prefix string amongst an array of strings.

# # If there is no common prefix, return an empty string "".

# # Approach 1: Horizontal scanning

# strs = ["flower","flow","flight"]
# # res = strs.last

# # strs.each do |str|
# #   prefix = ''
# #   str.each_char do |char|
# #     if res.index(char)
# #       prefix = "#{prefix}#{char}"
# #     else
# #       break
# #     end
# #   end
# #   res = prefix if !prefix.empty?
# # end

# # puts res

# # Approach 2: Vertical scanning

# strs = ["raj","rajam","rajhul"]

# res = ""
# first = strs[0]

# first.chars.each_with_index do |char, idx|
#   prefix = ''

#   strs.each do |str|
#     if str.index(char) == idx
#       prefix = char
#     else
#       prefix = ""
#       break
#     end
#   end
#   res = "#{res}#{prefix}" if !prefix.empty?
# end

# res



class LongestCommonPrefix
  attr_accessor :words
  attr_reader :result, :first

  def initialize(words)
    @words = words
    @result = ""
    @first = @words.first
  end

  def get_common_prefix_vertical
    @first.chars.each_with_index do |char, idx|
      prefix = ""

      @words.each do |word|
        if word[idx] == char
          prefix = char
        else
          prefix = ""
          break
        end
      end

      if !prefix.empty?
        @result = "#{@result}#{prefix}"
      else
        break
      end

    end
    @result
  end

  def get_common_prefix_horizontal
    res = @words.last

    @words.each do |str|
      prefix = ''
      str.each_char do |char|
        if res.index(char)
          prefix = "#{prefix}#{char}"
        else
          break
        end
      end
      res = prefix if !prefix.empty?
    end

    res
  end

end
