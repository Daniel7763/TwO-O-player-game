require_relative 'player'
require_relative 'game'

# Create player instances
player1 = Player.new("Player 1")
player2 = Player.new("Player 2")

# Create game instance
game = Game.new(player1, player2)

# Start the game
game.start_game