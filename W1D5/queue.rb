class Queue
  def initialize
    @qu = []
  end

  def enqueue(el)
    @qu.push(el)
    # I'm not entirely sure why el is also returned, but it seems useful
    el
  end

  def dequeue
    @qu.shift
  end

  def show
    @qu.dup
  end
end
