require_relative 'node'

class MaxBinaryHeapTree
	attr_reader :root

	def initialize(root)
		@root = root
	end

	def insert(root, node)
		current = self.root
		arr = [current]
		tempNode = nil
		while tempNode == nil
			#check if current.left is empty
			#if empty current.left = node
			if current.left.nil?
				current.left = node
				tempNode = node
			else
				#push current.left into arr if there is current.left
				arr.push(current.left)
			end
			#check if current.right is empty but left is not
			#if true current.right = node
			if current.right.nil? && current.left != node
				current.right = node
				tempNode = node
			else
				#push current.right into arr if there is current.right
				arr.push(current.right)
			end
			arr.shift
			current = arr[0]
		end
		#reorder until node.parent.rating is higher than node.rating
		
		# while tempNode.parent.rating < tempNode.rating
		# 	#if parent has a left
		# 	#set parent.left to node.parent else parent.right = node.parent
		# 	tempNode.parent.left == node ? tempNode.parent.left = tempNode.parent : tempNode.parent.right = tempNode.parent
		# 	tempNode.parent = tempNode
		# end

	end

	def find(root, data)
	end

	def delete(root, data)
	end

	def printf(children=nil)
	    current = self.root
	    arr = [current]
	    while arr[0] != nil
	      print "#{arr[0].title}: #{arr[0].rating}\n"
	      if current.left
	        arr.push(current.left)
	      end
	      if current.right
	        arr.push(current.right)
	      end
	      arr.shift
	      current = arr[0]
	    end
	end

	def print(root)
	end

end