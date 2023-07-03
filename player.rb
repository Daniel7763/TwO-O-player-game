#represents a player in the game
#stores a players name and score
#keeps the state (name, score)
#keeps player behaviors as methods - increase score(), get score()

class Player
  attr_reader :name

  def initialize(name)
    @name = name
    @score = 0
  end

  def increase_score
    @score += 1
  end

  def get_score
    @score
  end


end