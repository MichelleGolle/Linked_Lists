class Node

attr_accessor :node_name, :next_node

  def initialize(name)
    @node_name = name
    @next_node = nil
  end
end

class LinkedList

attr_accessor :head, :count, :tail

  def initialize
    @head
    @tail
    @count = 0
  end


  def push(name)
    node = Node.new(name)
    if @head == nil
      @head = node
    else
      @tail.next_node = node
    end
    @count += 1
    @tail = node
  end

  def include?(name)

  end

  def find(name)
    current = @head
    if @counter == 0
      return current
    elsif @counter == 1
      return current.next_node
    else
      while current.next_node != nil
        @count += 1
        current  = current.next_node
        return current    
      end
    end
  end

def access(index)
  if head.nil?
      nil
    elsif head.next_node.nil?
      head.node_name
    else
      current_node = head
      index.times do
        current_node = current_node.next_node
      end
      current_node.node_name
    end
  end
end
