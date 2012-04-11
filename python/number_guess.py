import random
class NumberGuess(object):
  def __init__(self):
    self.thinking_number = random.randint(1, 100)
    print("I am thinking of a number between 1 and 100")
  
  def check(self, guess):
    if self.thinking_number == guess:
      return 0
    elif( self.thinking_number > guess):
      return -1
    else:
      return 1
      

print("Welcome to the Number Guessing Game")

ng = NumberGuess()

while(True):
  guess = input("Guess my Number: ")
  result = ng.check(guess)
  if result == 0:
    print("You Guessed It !!!")
    break
  elif result == -1:
    print("Higher...")
  else:
    print("Lower...")
    
    