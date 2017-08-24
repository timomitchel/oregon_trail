
require_relative 'node'
require 'pry'
class LinkedList



  attr_reader :head, :count, :tail
  def initialize
    @head = nil
    @count = 0
    @tail = nil
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

  # some recursion learning with Bao
  # def append(surname, node)
  #   if node == nil
  #     return
  #   end
  #   append(surname, node.next_node)
  #   node.next_node =  Node.new(surname)
  # end
  #
  # def count(node = @head, count = 0)
  #   return count if node == nil
  #   current_node = node
  #   return count(current_node.next_node, count + 1)
  # end


  def to_string
    current = @head
    surnames = "The #{current.surname} family"
    until current.next_node.nil?
      surnames << ", followed by the #{current.next_node.surname} family"
      current = current.next_node
    end
    surnames
  end

  def prepend(surname)
    @count += 1
    if @head == nil
      @head = Node.new(surname)
      @tail = @head
    else
      current_node = @head
      @head = Node.new(surname)
      @head.next_node = current_node
    end

  end

  def insert(position, surname)
    @count += 1
    i = 0
    pointer = @head
    until i == (position - 1)
      i += 1
      pointer = pointer.next_node
    end
    if pointer.next_node != nil
       pointer.next_node = Node.new(surname, pointer.next_node)
    else
      pointer.next_node = Node.new(surname)
      @tail = pointer.next_node
    end
  end

  def find(position, elements)
    i = 0
    pointer = @head
    until i == position
      pointer = pointer.next_node
      i += 1
    end
    return "The #{pointer.surname} family" + print_following_family(pointer, elements)
  end

  def print_following_family(current_node, number_of_families)
    pointer = current_node
    families = ""
    while number_of_families > 1
      pointer = pointer.next_node
      families += ", followed by the #{pointer.surname} family"
      number_of_families -= 1
    end
    return families
  end

  def includes?(name)
    current = @head
    while current != nil
      if current.surname == name
        return true
      end
      current = current.next_node
    end
    return false
  end

  def pop
    @count -= 1
    pointer = @head
    until pointer.next_node == @tail
      pointer  = pointer.next_node
    end
    pointer.next_node = nil
    @tail = pointer

  end





end
