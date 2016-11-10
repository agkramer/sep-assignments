class MyStack
  attr_accessor :top

  def initialize
    @stack = Array.new
    self.top = nil
    @pointer = -1
  end

  def push(item)
    @pointer += 1
    @stack[@pointer] = item
    self.top = item
  end

  def pop
    temp = @stack[@pointer]

    @pointer -= 1

    if @pointer < 0
      self.top = nil
    else
      self.top = @stack[@pointer]
    end

    return temp
  end

  def empty?
    if self.top == nil
      return true
    else
      return false
    end
  end
end
