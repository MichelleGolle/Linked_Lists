gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'linked_list'

class LinkedListTest < Minitest::Test
attr_reader :list

  def test_it_starts_with_zero_elements
    assert_equal 0, list.to_a.count
  end

  def test_a_node_links_to_its_next_element
    list = LinkedList.new
    list.push("hello")
    list.push("world")
    assert_equal "world", list.tail.node_name
    assert_equal "world", list.head.next_node.node_name
  end

  def test_nodes_have_data
    node = Node.new("pizza")
    assert_equal "pizza", node.node_name
  end

  def test_nodes_have_next_node
    n1 = Node.new("pizza")
    n2 = Node.new("cats")
    n1.next_node = n2
    assert_equal "cats", n1.next_node.node_name
  end


  def test_list_has_head_node
    list = LinkedList.new
    list.push("dog")
    assert_equal "dog", list.head.node_name
  end

  def test_next_node_for_the_last_node_is_nil
    list = LinkedList.new
    list.push("world")
    assert_equal nil, list.tail.next_node
  end

  def test_it_can_access_node_by_position
  list = LinkedList.new
  list.push("hello")
  list.push("world")
  list.push("today")
  assert_equal "today", list.access(2)
  end


  def test_it_can_count_total_elements
    list = LinkedList.new
    list.push("hello")
    list.push("world")
    list.push("today")
    assert_equal 3, list.count
  end

  def test_it_can_pop_element
    list = LinkedList.new
    list.push("hello")
    list.push("world")
    list.push("today")
    list.pop
    assert_equal 2, list.count
    assert_equal "world", list.tail.node_name
  end

end
