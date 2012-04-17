class NumberGuess 
  check_number: () ->
    guess = parseInt($("#guess").val())
    if guess == window.thinking_number
      NumberGuess.self.update_display("You Guessed it")
    else if(guess > window.thinking_number)
      NumberGuess.self.update_display("Lower... Guess Again")
    else
      NumberGuess.self.update_display("Higher... Guess Again")

  constructor: () ->
    NumberGuess.self = this;
    window.thinking_number = Math.floor(Math.random()*101)
    NumberGuess.self.update_display("I am thinking of a number between 1 and 100")

  update_display: (message) ->
    $("#response h2").html(message)

$(document).ready( ->
  ng = new NumberGuess()
  $("#go").bind("click", ng.check_number)
)