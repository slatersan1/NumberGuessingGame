require "pry"

class Game
	
	attr_accessor :@av_guesses

	def initialize(max, player)
		@max = rand(max)
		@player = player
		@av_guesses = [1..(@max)]
	end
	
	def play
		@answer = rand(@max)
		puts "Please guess a number between 1 and #{max}"
		guess = @player.get_guess
		until	guess == @answer
			sleep 0.25
			if guess > @answer
				puts "Too high, try again: "
				@av_guesses = [1..(guess - 1)]
			else
				puts "Too low, try again"
				@av_guesses = [(guess + 1)..(@max)]
			end
			guess = @player.get_guess(@max)
			puts "Guess is #{guess}"
		end
		puts "Good job!"
	end
end					