require_relative 'node'

class BinarySearchTree
  attr_reader :root

  def initialize(root)
    @root = root
  end

  def insert(root, node)
    if node.rating <= root.rating
      root.left.nil? ? root.left = node : self.insert(root.left, node)
    elsif node.rating > root.rating
      root.right.nil? ? root.right = node : self.insert(root.right, node)
    end
  end

  # Recursive Depth First Search
  def find(root, data)
    return root if root.title == data
    # check if root has left
    if root.left
      # if left == true then call find(left, data)
     left = self.find(root.left, data)
    end
    # check if root has right
    if root.right
      right = self.find(root.right, data)
    end
    left.nil? ?  right :  left
  end

  def delete(root, data)
    return nil if data == nil
    #if data is root, change root to nil
    root = nil if data == root.title
    #find target data
    target = self.find(root, data)
    ## Case1: no child
    #if target does not have left or right node

    if target.left.nil? && target.right.nil? && target.parent
      #set parent's left to nil if left is the target... vice versa
      target.parent.left == target ? target.parent.left = nil : target.parent.right = nil

       ## Case2: one child
    # if target only has a left node
    elsif target.right.nil? && !target.left.nil?
      min = self.findMin(target.left)
      swapTarget(min, target)
      if target.left
        target.left.parent = min
      end

      ## if target only has a right node

    elsif target.left.nil? && !target.right.nil?
      min = self.findMin(target.right)
      swapTarget(min, target)
      if target.right
        target.right.parent = min
      end

      ## Case3: two child

    elsif !target.left.nil? && !target.right.nil?
      min = self.findMin(target.right)
      swapTarget(min, target)
      if !target.left.nil?
        target.left.parent = min
      end
      if !target.right.nil?
        target.right.parent = min
      end
    end
  end

  # Recursive Breadth First Search
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

  def findMin(root)
    while root.left != nil
      root = root.left
    end
    return root
  end

  private

  def swapTarget(min, target)
    min.parent.left == min ? min.parent.left = nil : min.parent.right = nil
    target.parent.left == target ? target.parent.left = min : target.parent.right = min
    target = min
    return target
  end
end
