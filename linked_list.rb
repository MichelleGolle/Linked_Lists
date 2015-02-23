class Node

attr_accessor :node_name, :next_node

def initialize(node)
  @node_name = node
  @next_node = nil
end
end

class LinkedList

attr_accessor :head, :node, :count, :tail

  def initialize
  @head
  @node
  @count = 0
  end


  def push(node)
  @list = LinkedList.new
    @node = Node.new(node)
    if @head == nil
      @head = @node
      @count += 1
    else while  @node.next_node != nil
      @node = @node.next_node
      @count += 1
    end
    @node.next_node = Node.new(node)
    @count +=1
    end
    end

def last_node
@list = LinkedList.new
@node = Node.new(node)
@node.next_node == nil
end
  end
