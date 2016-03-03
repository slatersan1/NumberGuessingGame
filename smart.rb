class SmartPlayer
	def initialize
		@av_guesses = []	
	end
	
	def get_guess(max)
		guess = @av_guesses[(max/2) - 1].to_i
	  	if guess > @answer	
	    @av_guesses = [1..(guess - 1)]
        else
	    @av_guesses = [(guess + 1)..max]
		end
		guess
	end
end
