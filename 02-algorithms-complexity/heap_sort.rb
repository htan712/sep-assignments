def max_heapify(arr, i)
	#left child index of parent
	left = 2*i + 1
	#right child index of parent
	right = 2 * i + 2
	#set max to i so the comparison does not compare with nil
	max = i
	#left && right can't be nil
	#left index is also less than arr length
	#left has to be bigger than right child and parent
	if (left <= arr.count) && (arr[left] != nil) && arr[right] != nil && (arr[left]>arr[right]) && (arr[left] > arr[max])
		max = left
	#left && right can't be nil
	#right has to be bigger than max
	#right index needs to be less than arr length
	elsif (right <= arr.count) && (arr[left] != nil) && (arr[right] != nil) &&(arr[right]>arr[max])
		max = right
	end

	if max != i
		arr[i], arr[max] = arr[max], arr[i]
		max_heapify(arr, max)
	end
end

def build_max_heap(arr)
	#this will be the last index of nodes with child leaves
	parents = (arr.length/2).floor - 1
	(0..parents).reverse_each do |i|
		max_heapify(arr, i)
	end
	arr
end