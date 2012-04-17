(function() {
  var NumberGuess;
  NumberGuess = (function() {
    NumberGuess.prototype.check_number = function() {
      var guess;
      guess = parseInt($("#guess").val());
      if (guess === window.thinking_number) {
        return NumberGuess.self.update_display("You Guessed it");
      } else if (guess > window.thinking_number) {
        return NumberGuess.self.update_display("Lower... Guess Again");
      } else {
        return NumberGuess.self.update_display("Higher... Guess Again");
      }
    };
    function NumberGuess() {
      NumberGuess.self = this;
      window.thinking_number = Math.floor(Math.random() * 101);
      NumberGuess.self.update_display("I am thinking of a number between 1 and 100");
    }
    NumberGuess.prototype.update_display = function(message) {
      return $("#response h2").html(message);
    };
    return NumberGuess;
  })();
  $(document).ready(function() {
    var ng;
    ng = new NumberGuess();
    return $("#go").bind("click", ng.check_number);
  });
}).call(this);
