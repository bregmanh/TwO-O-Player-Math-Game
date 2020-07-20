class Game 
  def initialize
    @turn =1
    @players = [Player.new(),Player.new()]
  end
  def question_loop
    while @players[0].score >0 && @players[1].score >0
      question = Question.new()
      puts "-------NEW TURN ---------"
      puts "Player #{@turn}: #{question.generate_question}"
      input = gets.chomp.to_i
      if question.right_answer == input
        puts "Player #{@turn}: YES! You are correct"
        puts "P1: #{@players[0].score}/3 vs P2: #{@players[1].score}/3"
        flip_turn()
      else
        puts "Player #{@turn}: Seriously? No!"
        @players[@turn-1].subtract_score()
        puts "P1: #{@players[0].score}/3 vs P2: #{@players[1].score}/3"
        flip_turn()
      end
    end
    #the player who its not their turn wins
    flip_turn()
    puts "Player #{@turn} wins with a score of #{@players[@turn-1].score}/3"
    puts "-----GAME OVER ------"
    puts "Good bye!"
  end
  def flip_turn
    if @turn ==1
      @turn =2
    else
      @turn =1
    end
  end

end