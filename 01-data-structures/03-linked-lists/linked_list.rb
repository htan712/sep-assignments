require_relative 'node'

class LinkedList
  attr_accessor :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end
  # This method creates a new `Node` using `data`, and inserts it at the end of the list.
  def add_to_tail(node)
    if @head.nil?
      @head = node
      @tail = @head
    else
      @tail.next = node
      @tail = @tail.next
    end
  end

  # This method removes the last node in the lists and must keep the rest of the list intact.
  def remove_tail
    if !@head.next.nil?
      temp = @head
      until temp.next == @tail
        temp = temp.next
      end
      @tail = temp
      @tail.next = nil
    else
      @head = nil
      @tail = nil
    end
  end

  # This method prints out a representation of the list.
  def print
    temp = @head
    while temp != nil
      puts "#{temp.data}"
      temp = temp.next
    end
  end

  # This method removes `node` from the list and must keep the rest of the list intact.
  def delete(node)
    if @head == node
      @head = head.next
    else
      prev = @head
      current = @head.next
      until current == node
        prev = prev.next
        current = current.next
      end
      if @tail == node
        @tail = prev
      end
      prev.next = current.next
    end
  end

  # This method adds `node` to the front of the list and must set the list's head to `node`.
  def add_to_front(node)
    if @head.nil?
      @head = node
      @tail = @head
    else
      node.next = @head
      @head = node
    end
  end

  # This method removes and returns the first node in the Linked List and must set Linked List's head to the second node.
  def remove_front
    return nil if @head.nil?
    tempHead = @head
    @head = tempHead.next
  end

  def findNode(index)
    i = 0
    current = @head
    while i != index
      i += 1
      current = current.next
    end
    current
  end

  def destroyNode(index)
    if index == 0
      @head = @head.next
    else
      i = 0
      prev = @head
      current = @head.next
      while i != index
        i += 1
        prev = prev.next
        current = current.next
      end
      if prev == @tail
        @tail = prev
      end
      prev.next = current.next
    end
  end
end