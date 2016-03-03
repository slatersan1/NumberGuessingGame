require "pry"

class Game

	def initialize(max, player)
		@max = max
		@player = player
	end
	
	
	def play
		answer = rand(@max)
		last = nil
		puts "Please guess a number between 1 and #{@max}"
		guess = @player.get_guess(@max)
		until	guess == @answer
			puts "Guess is: #{guess}"
			sleep 0.25
			if guess > @answer
				puts "Too high, try again: "
				last = :high
			else
				puts "Too low, try again: "
				last = :low
			end
			guess = @player.get_guess(@max)
		end
		puts "Guess is: #{guess}"
		puts "Good job! Answer is #{@answer}"
	end
end			