class Node
  attr_accessor :next, :data
  # next: stores the data of the next node
  # data: stores the value of the current list element

  def initialize(data)
  	@data = data
  end
end