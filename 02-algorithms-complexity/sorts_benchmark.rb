require 'benchmark'
require_relative 'bucket_sort'
require_relative 'heap_sort'
require_relative 'quick_sort'

quicksort_arr = Array.new(1000000) {rand(0..10000)}
heapsort_arr = Array.new(1000000) {rand(0..10000)}
bucketsort_arr = Array.new(1000000) {rand(0..10000)}

Benchmark.bm do |x|
	x.report("quicksort:") {quicksort(quicksort_arr)}
	x.report("heapsort:") {build_max_heap(heapsort_arr)}
	x.report("bucket_sort:") {bucketSort(bucketsort_arr)}
end