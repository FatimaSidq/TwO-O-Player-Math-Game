class Player
  attr_reader :lives, :name, :nickname

  def initialize(name, nickname)
    @lives = 3
    @name = name
    @nickname = nickname
  end

  def deduct_life
    @lives -= 1
  end

  def ask_question
    question = Question.new
    puts "#{name}: #{question.question}"
    print "> "
    if $stdin.gets.chomp.to_i == question.answer
      puts "#{name}: YES! You are correct."
    else
      puts "#{name}: Seriously? No!"
      deduct_life
      if @lives < 1
        puts "----- GAME OVER -----\nGood bye!"
        exit
      end
    end
  end
end