#represents the game
#manages the gameplay, turns and who wins
#keeps the state (players, current_turn)
#manages behavior with methods, start(), next_turn(), end(), validate_answer()

class Game

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_player = @player1
  end

  def start_game
    puts "welcome to the game"
    puts "start the game?"

    loop do
      display_turn_info
      ask_question
      validate_answer
      check_game_over
      switch_turns
    end
  end

  def display_turn_info
    puts "-------------------"
    puts "Current Turn: #{@current_player.name}"
    puts "Score: #{@current_player.get_score}"
    puts "-------------------"
  end

  def ask_question
    puts "answer the following question"
    #add question
    puts "What is 5 plus 3"

    #.chomp to take players answer
    @current_player_answer = gets.chomp
  end

  def validate_answer
    #correct answer here
    expected_answer = "8"
    if @current_player_answer == expected_answer
      puts "You're correct!"
      @current_player.increase_score
    else
      puts "*quickly points at you without eye contact* WRONG"
    end
  end

  def check_game_over
    if @player1.get_score >= 3 || @player2.get_score >= 3
      end_game
    end
  end

  def switch_turns
    if @current_player == @player1
      @current_player = @player2
    else @current_player = @player1
    end
  end

  def end_game
    puts "Game Over"
    if @player1.get_score > @player2.get_score
        puts "Player 1 WON"
      elsif @player2.get_score > @player1.get_score
        puts " Player 2 WON"
      else
        puts "its a tie, what the hell?"
    end

    puts "Goodbye!"
    exit
  end

end

# player 1: What does 5 plus 3 equal
# > 9
# Player 1: Seriously? No!
# P1: 2/3 vs 3/3
# ------New Turn-----
# Player2: Whats does 2 plaus 6 equal?
# > 8
# Player 2: Yes! you are correct.
# P1: 2.3 vs P2: 3/3
# ------New Turn-----
# ...some time later...
# Player 1 wins with a score of 1/3
# ----GAME OVER-----
# Good Bye!