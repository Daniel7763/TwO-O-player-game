#represents the game
#manages the gameplay, turns and who wins
#keeps the state (players, current_turn)
#manages behavior with methods, start(), next_turn(), end(), validate_answer()

class Game

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_player = @player1

    @q1 = "What is 1 + 1?"
    @q2 = "What is 1 + 2?"
    @q3 = "What is 1 + 3?"
    @q4 = "What is 1 + 4?"
    @q5 = "What is 1 + 5?"
    @q6 = "What is 1 + 6?"

    @question_array = [@q1,@q2,@q3,@q4,@q5,@q6]

    @current_question = @q1

    @a1 = "2", @a2 = "3", @a3 = "4", @a4 = "5", @a5 = "6", @a6 = "7"

    @current_answer = @a1
  end

  def start_game
    puts "Welcome to TwO-O-Player!"

    loop do
      display_turn_info
      ask_question
        # loop
      validate_answer
      check_game_over
      switch_turns
    end
  end

  def display_turn_info
    puts "------SCORE-------"
    puts "Current Turn: #{@current_player.name}"
    puts "P1: #{@player1.get_score}/3 vs P2: #{@player2.get_score}/3"
    puts "-------NEXT QUESTION-------"
  end

  def ask_question
    puts "#{@current_player.name}: answer the following question"
    puts @current_question

    #.chomp to take players answer
    @current_player_answer = gets.chomp
  end

  #alternative method was to use an object instead of a case
  #question = key of object & value = awnser
  def get_expected_answer(question)
    case question
    when @q1
      "2"
    when @q2
      "3"
    when @q3
      "4"
    when @q4
      "5"
    when @q5
      "6"
    when @q6
      "7"
    else
      "Q/A error"
    end
  end

  def validate_answer

    expected_answer = get_expected_answer(@current_question)

    puts expected_answer
    if @current_player_answer == expected_answer
      puts "CORRECT!"
      @current_player.increase_score
    else
      puts "WRONG"
      @current_player.get_score
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
    @current_question = @question_array.sample
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