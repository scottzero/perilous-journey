require 'minitest/autorun'
require './lib/node'
require 'pry'


class NodeTest < Minitest::Test

  def setup
    @node = Node.new("Burke")
  end

  def test_it_exists
    # binding.pry
    assert_instance_of Node, @node
  end

  def test_it_has_surname
    assert_equal 'Burke', @node.surname
  end

  def test_next_node_starts_nil
    assert_nil @node.next_node
  end
end
