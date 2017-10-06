class Stack
  def initialize
    # create ivar to store stack here
    @stack = []
  end

  def add(el)
    # adds an element to the stack
    @stack.push(el)
    # not sure why el returned, but seems useful 
    el
  end

  def remove
    # removes one element from the stack
    @stack.pop
  end

  def show
    # return a copy of the stack
    @stack.dup
  end

end
