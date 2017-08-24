# class LinkedList

  def initialize(name)
    @head =  Node.new(name, nil)
  end

  def add(name)
    current = @head
    while current.next != nil
      current = current.next
    end
    current.next = Node.new(name, nil)
  end

  def delete(name)
    current.next = @head
    if current.name = name
      @head = current.next
    else
      while(current.next != nil) && (current.next.name != name)
        current = current.next
      end
      unless current.next == nil
        current.next = current.next.next
      end
    end
  end

  def return_list
    elements = []
    current = @head
    while current.next != nil
      elements << current
      current = current.next
    end
    elements <<current
  end

end
