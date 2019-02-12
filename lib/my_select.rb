def my_select(nums)
  new_array = []
  if block_given?
    i = 0
    while i < nums.size
      if yield(nums[i]) == true
        new_array << nums[i]
      end
      i += 1
    end
    new_array
  else
    "Block not provided"
  end
end