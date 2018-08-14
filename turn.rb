require_relative "question"
require_relative "player"

class Turn

  def initialize(current_player)
    @current_player = current_player
    generate_q
  end
  
  def generate_q
    q = Question.new
    puts "#{@current_player.name}: #{q.ask_question}" 
    @answer = gets.chomp.to_i
    if q.check_answer(@answer)
      puts "Correct!"
    else
      puts "Nope! Wah wah"
      @current_player.lose_life
    end
  end

end
