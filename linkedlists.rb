class Node

attr_accessor :next_node, :data

  def initialize(data = nil)
    @data = data
    @next_node = nil
  end
end

class LinkedList

  def initialize
    @head = nil
    @tail = nil
  end

  def append(data)
    node = Node.new(data)
    if @head.nil?
      @head = node
      @tail = node
    else
      @tail.next_node = node
      @tail = node
    end
  end

  def prepend(data)
    node = Node.new(data)
    if @head.nil?
      @head = node
      @tail = node
    else
      node.next_node = @head
      @head = node
    end
  end

  def size
    if @head.nil?
      return 0
    else
      count = 1
      current = @head
      until current.next_node.nil?
        count += 1
        current = current.next_node
      end
    end
    count
  end

  def head
    if @head.nil?
      nil
    else
      @head.data
    end
  end

  def tail
    if @tail.nil?
      nil
    else
      @tail.data
    end
  end

  def at(index)
    if index == 0
      head
    else
      current = @head
      count = 0
      until count == index
        current = current.next_node
        count += 1
      end
      current.data
    end
  end

  def pop
    start_node = @head
    start_node = start_node.next_node until start_node.next_node == @tail
    popped = @tail
    @tail.data = nil
    @tail = start_node
    @tail.next_node = nil
  end

  def contains?(item)
    return false if @head.nil?
    current = @head
    contains = false
    until current.nil?
      contains = true if current.data == item
      current = current.next_node
    end
    contains
  end

  def find(data)
    return nil if @head.nil?
    current = @head
    found =false
    count = 0
    until current.nil?
      if current.data == data
        found = true
        break
      end
      current = current.next_node
      count += 1
    end
    if found == true
      count
    else
      nil
    end
  end

  def to_s
    return nil if @head.nil?
    current = @head
    preview = ''
    until current.nil?
      preview += "( #{current.data} ) -> "
      current = current.next_node
    end
    preview + 'nil'
  end

  def insert_at(node, index)
  end

  def remove_at(index)
  end

end
