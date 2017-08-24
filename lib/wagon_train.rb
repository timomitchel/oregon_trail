require_relative 'linked_list'
require_relative 'node'

class WagonTrain

attr_reader :list, :count, :surname, :head
  def initialize
    @list = LinkedList.new
    @count = 0
    @head = nil
  end

  def append(surname)
    @count += 1
    current = @head
    if @head.nil?
      @head = Node.new(surname)
    elsif current.next_node == nil
      current.next_node = Node.new(surname)
    else
      while current.next_node != nil
        current = current.next_node
      end
      current.next_node = Node.new(surname)
      @tail = current.next_node
    end
  end

  def surname
    "#{surname}"
  end

end
