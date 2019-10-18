require 'minitest/autorun'
require './lib/linked_list'

class LinkedListTest < Minitest::Test

  def setup
    @linked_list = LinkedList.new
  end

  def test_exists
    assert_instance_of LinkedList, @linked_list
  end

  def test_instance_vars
    assert_nil @linked_list.head
  end

  def test_append_method
    refute_nil @linked_list.append("West")
    # binding.pry
  end

  def test_next_node_still_nil
    @linked_list.append("West")
    assert_nil @linked_list.head.next_node
  end

end
