def binaryRecursive(array, target)
	min = 0
	max = array.length - 1
	guess = ((min+max)/2).floor
	if array[guess] === target
		return  "Found #{target}"
	elsif array[guess] < target
		min = guess + 1
		binaryRecursive(array[min..max], target)
	elsif array[guess] > target
		max = guess - 1
		binaryRecursive(array[min..max], target)
	end
end


arr = (0..20).to_a
puts binaryRecursive(arr, 18)