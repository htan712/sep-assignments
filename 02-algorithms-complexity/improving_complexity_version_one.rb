def multiple_dimension_array_sort(*arrays)
  # combined_array = []
  # arrays.each do |array|
  #   array.each do |value|
  #     combined_array << value
  #   end
  # end
  
  ## flatten has less line of code.
  combined_array = arrays.flatten

  sorted_array = [combined_array.delete_at(combined_array.length-1)]

  for val in combined_array
    i = 0
    while i < sorted_array.length
      if val <= sorted_array[i]
        sorted_array.insert(i, val)
        break
        #when i is last element of the array
      elsif i == sorted_array.length - 1
        sorted_array.insert(i, val)
        break
      end
      i+=1
    end
  end
  # Return the sorted array
  sorted_array
end
