def quicksort(array, from=0, to=nil)
	if to == nil
		to = array.count - 1
	end

	if (from < to)
		pIndex = partition(array, from, to)
		quicksort(array, from, pIndex-1)
		quicksort(array, pIndex+1, to)
	end
	return array
end

#partition is to set all the element bigger than pivot to left and smaller than pivot to right side
def partition (array, from, to)
	#set pivot to end of array
	pivot = array[to]
	#set pIndex to beginning of array
	pIndex = from
	#loop through from the beginning of array
	for i in from..to-1
		#if element at i < pivot then swap 
		if array[i] <= pivot
			#swap element at index i with pIndex
			array[i], array[pIndex] = array[pIndex], array[i]
			pIndex += 1
		end
	end
	#last swap pivot with element at pIndex (dividing an array into two arrays for quicksort recursion)
	array[to], array[pIndex] = array[pIndex], array[to]
	return pIndex
end






