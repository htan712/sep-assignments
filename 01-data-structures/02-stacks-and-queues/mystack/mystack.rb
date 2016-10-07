class MyStack
  attr_accessor :top

  def initialize
    @stack = Array.new
    self.top = @stack[0]
  end

  def push(item)
    @stack.unshift(item)
    self.top = @stack[0]
  end

  def pop
    item = @stack.shift
    self.top = @stack[0]
    item
  end

  def empty?
    !@stack[0] ? true : false
  end
end