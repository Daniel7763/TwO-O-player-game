# #Nouns extracted
# Player: This could be a class representing a player in the game, containing information such as the player's name and score.

# Game: This could be a class representing the game itself, containing logic for managing the gameplay, turns, and determining the winner.

# Let's break down the reasoning behind each class:

# Player:

# Attributes:
# Name: Represents the name of the player.
# Score: Keeps track of the player's score throughout the game.
# Methods (functions):
# IncreaseScore: Increases the player's score when they answer correctly.
# GetScore: Retrieves the player's current score.
# Game:

# Attributes:
# Players: Stores the instances of Player class participating in the game.
# CurrentTurn: Keeps track of whose turn it is.
# Methods (functions):
# Start: Initializes the game by creating player instances and setting up the initial state.
# NextTurn: Updates the turn to the next player.
# ValidateAnswer: Verifies the correctness of the player's answer.
# End: Handles the end of the game, determines the winner, and displays the final score.

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