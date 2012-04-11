function check_number(){
  var guess = parseInt($("#guess").val());
  if (guess == window.thinking_number){
    update_display("You Gussed it");
  }else if(guess > window.thinking_number){
    update_display("Lower... Guess Again");
  }else{
    update_display("Higher... Guess Again");
  }
}
function update_display(message){
  $("#response h2").html(message);
}

function init(){
 window.thinking_number = Math.floor(Math.random()*101);
 update_display("I am thinking of a number between 1 and 100");
}

$(document).ready(function(){
  
  init();
  $("#go").bind("click", check_number);
})