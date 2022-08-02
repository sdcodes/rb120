class Score
attr_accessor :score

  def initialize
    @score = 0
  end 
  
  def display
    score
  end 
  
  def point
    @score += 1
  end
end

class Move
  attr_reader :value
  VALUES = ['rock', 'paper', 'scissors']

  def initialize(value)
    @value = value
  end

  def scissors?
    @value == "scissors"
  end

  def rock?
    @value == 'rock'
  end

  def paper?
    @value == 'paper'
  end

  def >(other_move)
    (rock? && other_move.scissors?) ||
      (paper? && other_move.rock?) ||
      (scissors? && other_move.paper?)
  end

  def <(other_move)
    (rock? && other_move.paper?) ||
      (paper? && other_move.scissors?) ||
      (scissors? && other_move.rock?)
  end
  
  def to_s
    @value
  end
end

class Player
  attr_accessor :move, :name, :all_moves
  
  def initialize
    set_name
    @all_moves = []
  end
  
end

class Human < Player
  def set_name
    n = nil
    loop do
      puts "What is your name?"
      n = gets.chomp
      break unless n.empty?
      puts "Sorry, must enter a value."
    end
    self.name = n
  end

  def choose
    choice = nil
    loop do
      puts "Please choose rock, paper, or scissors:"
      choice = gets.chomp
      break if Move::VALUES.include?(choice)
      puts "Sorry, invalid choice."
    end
    self.move = Move.new(choice)
    self.all_moves << self.move.value
  end
end

class Computer < Player
  def set_name
    self.name = ['R2D2', 'Hal', 'Chappie', 'Sonny', 'Number 5'].sample
  end

  def choose
    self.move = Move.new(Move::VALUES.sample)
    self.all_moves << self.move.value
  end
end

class RPSGame
  attr_accessor :human, :computer, :computer_score, :human_score

  def initialize
    @human = Human.new
    @computer = Computer.new
    @computer_score = Score.new
    @human_score = Score.new
  end

  def display_welcome_message
    puts "Welcome to Rock, Paper, Scissors! Best out of 10 wins!"
  end

  def display_goodbye_message
    puts "Thanks for playing Rock, Paper, Scissors. Goodbye!"
  end

  def display_moves
    puts "#{human.name} chose #{human.move}."
    puts "#{computer.name} chose #{computer.move}."
  end
  
  def current_score 
    if human.move > computer.move
      puts "#{human.name} won a point!"
      puts "#{computer.name} - #{computer_score.display} | #{human.name} - #{human_score.point}"
    elsif human.move < computer.move
      puts "#{computer.name} won a point!"
      puts "#{computer.name} - #{computer_score.point} | #{human.name} - #{human_score.display}"
    else
      puts "It's a tie! No points given."
    end
  end
  
  def final_score
        puts "FINAL SCORES: #{computer.name} - #{computer_score.display} | #{human.name} - #{human_score.display}"  
  end 
  
  def final_winner
    if human_score.display > computer_score.display
      puts "#{human.name} won!"
    elsif human_score.display < computer_score.display
      puts "#{computer.name} won!"
    else
      puts "It's a tie!"
    end
  end
  
  def display_previous_moves
    puts "#{human.name}'s previous moves: #{human.all_moves}"
    puts "#{computer.name}'s previous moves: #{computer.all_moves}"
  end 

  def play_again?
    answer = nil
    loop do
      puts "Would you like to play again? (y/n?)"
      answer = gets.chomp
      break if ['y', 'n'].include? answer.downcase
      puts "Sorry, must be y or n."
    end

    return true if answer.downcase == 'y'
    return false if answer.downcase == 'n'
  end

  def play
    display_welcome_message
    loop do
      current_round = 0
      human_score.score= 0
      computer_score.score= 0
      loop do
        current_round += 1
        human.choose
        computer.choose
        display_moves
        current_score
        break if current_round == 10
      end
      final_score
      final_winner
      
      puts "Would you like to see a history of each players' moves? (y/n)"
        see_moves = gets.chomp
      loop do 
        if see_moves.downcase == "y"
          display_previous_moves
          break
        elsif see_moves.downcase == "n"
          break
        else
          puts "Sorry, must be y or n."
        end 
      end 
      break unless play_again?
    end    
    display_goodbye_message
  end
end

RPSGame.new.play
