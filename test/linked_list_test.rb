require 'minitest/autorun'
require './lib/linked_list'

class LinkedListTest < Minitest::Test

  def setup
    @linked_list = LinkedList.new
  end

  def test_exists
    assert_instance_of LinkedList, @linked_list
  end

end
