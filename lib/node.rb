require 'pry'

class Node

attr_reader :surname
attr_accessor :next_node

  def initialize(surname = nil, next_node = nil)
    @surname = surname
    @next_node = next_node
  end

end
