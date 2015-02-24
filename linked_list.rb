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
    else
      current_node = head
      index.times do
        if current_node.next_node == nil
          return nil
        end
        current_node = current_node.next_node
      end
      current_node.node_name
    end
  end

  # Delete and return last node
  def pop
    current_node = @head     #head is beginning
    last_node = @tail
    if head.next_node == nil
      @head = nil
    else
      until current_node.next_node.next_node == nil
        current_node = current_node.next_node
      end
      current_node.next_node = nil
    end
    @tail = current_node
    @count -= 1
    return last_node
  end
end
