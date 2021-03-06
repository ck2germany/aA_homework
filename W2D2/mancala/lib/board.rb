class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @cups = Array.new(14) { Array.new []}
    place_stones
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    @cups.each_with_index do |cup, idx|
      next if idx == 6 || idx == 13
        4.times do
          cup << :stone
        end
    end
  end

  def valid_move?(start_pos)
    # 0..5 and 7..12
    raise "Invalid starting cup" if start_pos == 6 || start_pos == 13

    raise "Invalid starting cup" if @cups[start_pos] == []

    raise "Invalid starting cup" if start_pos < 0 || start_pos > 13
  end

  def make_move(start_pos, current_player_name)
    stones = @cups[start_pos]
    @cups[start_pos] = []

    cup_idx = start_pos

    until stones.empty?
      cup_idx += 1
      cup_idx = cup_idx % 14
      next if cup_idx == 6 && current_player_name == @name2
      next if cup_idx == 13 && current_player_name == @name1
      @cups[cup_idx] << stones.pop

    end

    render

    next_turn(cup_idx)

  end

  def next_turn(ending_cup_idx)
    # helper method to determine what #make_move returns
    return :prompt if ending_cup_idx == 6 || ending_cup_idx == 13
    return :switch if  @cups[ending_cup_idx].count == 1
    ending_cup_idx
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    @cups[0..5].all?(&:empty?) || @cups [7..12].all?(&:empty?)
  end

  def winner
    return :draw if @cups[6] == @cups[13]
    return (@cups[6].length > @cups[13].length ? @name1 : @name2 )
  end
end
