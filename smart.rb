class SmartPlayer
	def initialize
		# @av_guesses = []	
		@min = 0
		@max = max
		@guess = nil
	end
	
	def get_guess(max, guess)
		# guess = @av_guesses[(max/2) - 1].to_i
	  	if last == :high
	  		@max = @guess - 1
        elsif last == :low
        	@min = @guess + 1	
        end
		# 	@guess = ((@max/2) - 1).to_1
			@guess = rand(@min..@max)
		end
	end
end
