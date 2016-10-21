class Node
  attr_accessor :title, :rating, :left, :right, :parent

  def initialize(title, rating)
  	@title = title
  	@rating = rating
  end

  def left=(node)
  	node.parent = self if node
  	@left = node
  end

  def right=(node)
  	node.parent = self if node
  	@right = node
  end
end