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

		# Add the ele­ment at the bot­tom leaf of the Heap.
		while tempNode == nil
			if current.left.nil?
				current.left = node
				tempNode = node
			else
				arr.push(current.left)
			end
			
			if current.right.nil? && current.left != node
				current.right = node
				tempNode = node
			else
				arr.push(current.right)
			end
			arr.shift
			current = arr[0]
		end
		# If inserted ele­ment is greater than its par­ent node in case of Max-Heap, swap the ele­ment with its parent.
		while node.rating > node.parent.rating
			# capture parent.parent as newParent
			if node.parent.parent
				newParent = node.parent.parent
				# assign current parent as oldParent
				oldParent = node.parent
				# assign newParent to node by checking where oldParent was
				if newParent.left == oldParent
					newParent.left = node
				elsif newParent.right == oldParent
					newParent.right = node
				end

				# assign current parent's left and right to tempLeft, tempRight
				tempLeft = oldParent.left if oldParent.left
				tempRight = oldParent.right if oldParent.right

				if tempLeft != node && tempLeft != nil
					node.left = tempLeft
					tempLeft.parent = node
					oldParent.left = nil
				elsif tempLeft == node
					node.left = oldParent
					oldParent.parent = node
				end

				if tempRight != node && tempRight != nil
					node.right = tempRight
					tempRight.parent = node
					oldParent.right = nil
				elsif tempRight == node
					node.right = oldParent
					oldParent.parent = node
				end

				node.parent = newParent
			end
		end
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