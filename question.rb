
# class name 
class Questions
  attr_accessor :answer
      
  # constructor 
  def initialize 
        
      # instance variable intialzation 
      @number_1 = rand(1..20)
      @number_2 = rand(1..20)
      @answer = @number_1 + @number_2
  end
    
  # display method 
  def display 
      puts "What does #{@number_1} plus #{@number_2} equal?"
  end
end

# # creating object 
# obj1 = Questions.new() 

# # calling display method 
# obj1.display() 