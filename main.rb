require_relative 'player'
require_relative 'game'

# Create player objects
player1 = Player.new("Player 1")
player2 = Player.new("Player 2")

# Initialize the game with player objects
game = Game.new(player1, player2)

# Start the game
game.start_game