require 'minitest/autorun'
require './lib/linked_list'
require 'pry'

class LinkedListTest < MiniTest::Test
  def setup
    @linked_list = LinkedList.new
  end

  def test_does_it_exist
    assert_instance_of LinkedList, @linked_list
  end

  def test_instance_variables
    assert_nil @linked_list.head
  end

  def test_append_method_adds_node
    refute_nil @linked_list.append("West")
    assert_instance_of Node,@linked_list.append("West")
  end

  def test_head_next_node_nil
    @linked_list.append("West")

    assert_nil @linked_list.head.next_node
  end

  def test_count_method_counts_number_of_nodes
    @linked_list.append("West")

    assert_equal 1, @linked_list.count
    # binding.pry
  end

  def test_the_strings_of_families
    @linked_list.append("West")
    assert_equal "The West family", @linked_list.to_string
  end

  def test_head_next_node_nil
    @linked_list.append("West")
    refute_nil @linked_list.head
    assert_nil @linked_list.head.next_node
  end

  def test_adding_two_nodes
    @linked_list.append("Payton")
    @linked_list.append("Long")
    string = "The Payton family, followed by the Long family"
    refute_nil @linked_list.head #yes we have a head
    refute_nil @linked_list.head.next_node #yes we have a head, with next node
    assert_equal 2, @linked_list.count #yes count method is working
    assert_equal string, @linked_list.to_string
  end

  def test_you_can_prepend_nodes
    @linked_list.append("Payton")
    @linked_list.append("Mcnugget")
    @linked_list.prepend("Neo")
    string = "The Neo family, followed by the Payton family, followed by the Mcnugget family"
    assert_equal string, @linked_list.to_string
    assert_equal 3, @linked_list.count
  end
end 
