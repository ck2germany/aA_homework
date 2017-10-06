class Map
  def initialize
    @map = []
  end

  def assign(key, val)
    idx = nil
    @map.each_index { |i| idx = i if @map[i][0] == key }
    if idx
      @map[idx][1] = val
    else
      @map.push([key,val])
    end
  end

  def lookup(key)
    @map.each_index {|i| return @map[i][1] if @map[i][0] == key }
  end

  def remove(key)
    idx = nil
    @map.each_index { |i| idx = 1 if @map[i][0] == key }
    @map.delete_at(idx) if idx
  end

  def show
    @map.dup
  end
end
