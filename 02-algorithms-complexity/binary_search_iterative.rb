def binarySearch(array, target)
	min = 0
	max = array.length - 1
	guess = 0
	while (min<=max)
		mid = ((min+max)/2).floor
		if array[mid] == target
			guess += 1
			return "Found #{target} at array index #{mid} after #{guess} guesses."
		elsif array[mid] < target
			guess += 1
			min = mid + 1
		elsif array[mid] > target
			guess += 1
			max = mid - 1
		end
	end
end


arr = (0..20).to_a
puts binarySearch(arr, 18)
