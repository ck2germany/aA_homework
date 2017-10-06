class Queue
  def initialize
    @qu = []
  end

  def enqueue(el)
    @qu.push(el)
  end

  def dequeue
    @qu.shift
  end

  def show
    @qu.dup
  end
end
