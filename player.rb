class Player
  attr_accessor :score, :name
  def initialize()
    @score=3
   
   
  end
  def subtract_score
      @score -= 1
  end
  
end

