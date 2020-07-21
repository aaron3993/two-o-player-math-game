class Question
  attr_accessor :first_number, :second_number, :answer

  def initialize
    @first_number = 1 + rand(20)
    @second_number = 1 + rand(20)
    @answer = first_number + second_number
  end
end