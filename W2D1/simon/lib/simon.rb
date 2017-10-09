require 'byebug'
class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play

    until @game_over
      system "clear"
      take_turn
    end
    game_over_message
    reset_game
  end

  def take_turn
    show_sequence
    round_pass = require_sequence
    round_success_message(round_pass)
    @sequence_length += 1
  end

  def show_sequence
    add_random_color
    puts "The next sequence is: "
    puts "#{@seq.join(" ")}"
    sleep(3)
    system "clear"
  end

  def require_sequence
    # returns true or false after getting sequence, could refactor into 2
    puts "Enter the sequence exactly as it was shown"
    input = gets.chomp.split(" ")
    @seq.each_index do |idx|
      return false if input[idx] != @seq[idx]
    end
    true

  end


  def add_random_color
    @seq << COLORS.sample
    # puts "#{@sequence} is the new sequence"
  end

  def round_success_message(pass)
    if pass == true
      puts "You successfully repeated the pattern, next round."

      sleep(2)
    else
      puts "You did not successfully repeat the pattern."
      @game_over = true
    end
  end

  def game_over_message
    puts "The game is over, you made it to #{@sequence_length} round(s)."
  end

  def reset_game
    @seq = []
    @sequence_length = 1
    @game_over = false
  end

end

if __FILE__ == $PROGRAM_NAME
  s = Simon.new
  s.play
end
