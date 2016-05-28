
class Question

  def initialize 
    @num_one= rand(1..20)
    @num_two= rand(1..20)
  end

  def display_question 
    @question= "What is #{@num_one} plus #{@num_two}?" 
  end
  

 def check(user_answer)
    answer= @num_one + @num_two
    user_answer==answer
  end

end