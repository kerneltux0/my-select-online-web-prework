def my_select(array)
  new_array = []
  if block_given?
    i = 0
    while i < array.size
      new_array << yield(array[i].even?)
      i += 1
    end
    new_array
  else
    "Block not provided"
  end
end