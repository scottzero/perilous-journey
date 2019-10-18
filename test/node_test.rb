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
end
