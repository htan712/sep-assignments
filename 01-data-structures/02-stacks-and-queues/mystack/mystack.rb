class MyStack
  attr_accessor :top

  def initialize
    @stack = Array.new
    self.top = @stack[0]
  end

  def push(item)
    i = @stack.size 
    until i < 0 do
      @stack[i] = @stack[i-1]
      if i == 0 
        @stack[i] = item
      end
      i-=1
    end
    self.top = @stack[0]
  end

  def pop
    item = @stack[0]
    i = 0
    @stack.each do |x|
      @stack[i] = @stack[i+1]
      i+=1
    end
    self.top = @stack[0]
    item
  end

  def empty?
    !@stack[0] ? true : false
  end
end