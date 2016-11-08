def binarySearch(array, target)
	min = 0
	max = array.length - 1
	guess = 0
	while (min<=max)
		mid = ((min+max)/2).floor
		if array[mid] == target
			return "Found #{target} at array index #{mid} after #{guess} guesses."
		elsif array[mid] < target
			min = mid + 1
		elsif array[mid] > target
			max = mid - 1
		end
		guess += 1
	end
end

def recursiveBinarySearch(array, target, from=0, to=nil)
	if to == nil
		to = array.length - 1
	end
	mid = ((from+to)/2).floor
	if array[mid] == target
		return "Found #{target} at array index #{mid}."
	elsif array[mid] < target
		return binarySearch(array, target, mid+1, to)
	elsif array[mid] > target
		return binarySearch(array, target, from, mid-1)
	end
end


arr = (0..20).to_a
puts binarySearch(arr, 18)
