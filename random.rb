class RandomPlayer
  def initialize(name = "R2D2")
    @name = name
  end

  def get_guess(max)
      rand(1..max)  
  end
end 