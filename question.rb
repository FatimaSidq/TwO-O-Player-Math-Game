class Question
  attr_reader :question, :answer
  def initialize
    number_1 = rand 1..20
    number_2 = rand 1..20
    @question = "What does #{number_1} plus #{number_2} equal?"
    @answer = number_1 + number_2
  end
end