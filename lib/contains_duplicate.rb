class ContainsDuplicates
  attr_accessor :nums

  def initialize(nums)
    @nums = nums
  end

  def has_duplicates?
    check_set = Set.new
    ret = true

    @nums.each do |l|
      unless check_set.add?(l)
        break
        ret = false
      end
    end

    ret
  end

end
