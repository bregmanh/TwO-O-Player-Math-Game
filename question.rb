class Question
  attr_accessor :num1, :num2
  def initialize
    @num1=rand(20)+1
    @num2=rand(20)+1

  end
  def generate_question
    "What does #{@num1} plus #{@num2} equal?"
  end

  def right_answer
    @num1+@num2

  end
end
