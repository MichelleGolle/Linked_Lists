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
    node = Node.new(name) #make new node
    if @head == nil #if there is no head
      @head = node #the new node is the head
    else
      @tail.next_node = node #makes node the last node in the list
    end
    @count += 1 #keeps track of how many nodes in the list by adding one to count
    @tail = node
  end

  def include?(name)
  end

  def find(name)
  end

end
