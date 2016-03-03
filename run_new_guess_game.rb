require "./game"
require "./smart"
require "./random"

game = Game.new(100, SmartPlayer.new)
game.play