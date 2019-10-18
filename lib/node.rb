require 'pry'

class Node
  attr_reader :surname
  attr_accessor :next_node

  def initialize(name)
    @surname = name
    @next_node = nil
  end

  def count(val)
    val += 1
    if @next_node.nil?
      return val
    else
      @next_node.count(val)
    end
  end 

end
