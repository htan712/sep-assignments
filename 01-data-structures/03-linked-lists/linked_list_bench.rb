require 'benchmark'
require_relative 'node'
require_relative 'linked_list'


list = LinkedList.new
mynode = Node.new("hi")
n = 10000
arr = []

## Benchmark for array.push vs. list.add_to_tail
Benchmark.bm do |x|
	x.report("add_to_tail:") do
		for i in 1..n do
			list.add_to_tail(mynode)
		end
	end

	x.report("array push:") do
		for x in 1..n do
			arr.push(x)
		end
	end
end

##Benchmark for finding 5000th item of array vs list

Benchmark.bm do |y|
	y.report("Linkedlist") do
		list.findNode(4999)
	end

	y.report("array") do
		arr[4999]
	end
end

Benchmark.bm do |z|
	z.report("destroy llist index") do
		list.destroyNode(4999)
	end

	z.report("array.delete") do
		arr.delete_at(4999)
	end
end


