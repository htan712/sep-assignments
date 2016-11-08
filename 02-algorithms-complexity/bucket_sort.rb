def bucketSort(arr, bucket_size=10)
	#find max of arr
	max = arr.max
	min = arr.min
	bucket_count = ((max-min)/bucket_size).floor + 1
	buckets = Array.new(bucket_count)
	(0..buckets.length-1).each do |x|
		buckets[x] = []
	end

	(0..arr.length-1).each do |i|
		buckets[((arr[i] - min)/bucket_size).floor].push(arr[i])
	end

	arr.clear
	(0..buckets.length-1).each do |x|
		if buckets[x][0] != nil
			sorted = insertionSort(buckets[x])
			sorted.each do |y|
				arr.push(y)
			end
		end
	end
	arr
end

def insertionSort(arr)
	sorted = [arr.shift]
	for x in arr
		sorted_index = 0
		while sorted_index < sorted.length
			if x <= sorted[sorted_index]
				sorted.insert(sorted_index, x)
				break
			elsif sorted_index == sorted.length-1
				sorted.insert(sorted_index+1, x)
				break
			end
			sorted_index += 1
		end
	end
	sorted
end
