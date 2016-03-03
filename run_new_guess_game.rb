require "./game"
require "./smart"
require "./random"

game = Game.new(100, RandomPlayer.new)
game.play