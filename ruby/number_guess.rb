
class NumberGuess
  def initialize()
    r = Random.new()
    @thinking_number = r.rand(1..100)
    puts "I am thining of a number between 1 and 100"
  end
  def check guess
    if @thinking_number == guess
      result = 0
    elsif @thinking_number > guess
      result = -1
    else
      result = 1
    end
    result 
  end
end

puts "Welcome to the Number Guessing Game"

ng = NumberGuess.new
while true
  print "Guess My Number: "
  guess = gets.chomp
  result = ng.check guess.to_i
  if result == 0 
    puts "You Got it!!!"
    break
  elsif result == -1
    puts "Higher..."
  else
    puts "Lower..."
  end
end
