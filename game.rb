require_relative "player"
require_relative "turn"

class Game

  def initialize
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    @game_over = false
    start
  end

  def start
    while (!@game_over)
      puts "-----NEW TURN-----"

      Turn.new(@player1)
      puts "P1:  #{@player1.lives}/3 vs P2:  #{@player2.lives}/3"
      if @player1.lives == 0
        @game_over = true
        if @game_over
          puts "#{@player2.name} wins!"
          puts "----- GAME OVER -----"
          break
        end

      end

      Turn.new(@player2)
      puts "P1:  #{@player1.lives}/3 vs P2:  #{@player2.lives}/3"
      if @player2.lives == 0
        @game_over = true
        if @game_over
          puts "#{@player1.name} wins!"
          puts "----- GAME OVER -----"
          break
        end

      end

    end
  end

end



