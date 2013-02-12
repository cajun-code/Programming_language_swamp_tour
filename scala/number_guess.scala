import scala.util.Random
import scala.util.control.Breaks._

object NumberGuess {
  
  val thinking_number = Random.nextInt(100)
  
  def check(guess: Int): Int = {
    if (thinking_number == guess) {
      return 0;
    }else if(thinking_number > guess){
      return -1;
    }else{
      return 1;
    }
  }
  
  def main(args:Array[String]){
    println("Welcome to the Number Guess Game")
    println("I am thinking of a number between 1 and 100")
    while(true){
      print("Guess my Number: ")
      var guess:Int = readInt()
      var result = check(guess)
      if(result == 0){
        println("\nYou Guessed it!!!\n")
        break
      }else if(result == -1){
        println("Higher...")
      }else{
        println("Lower...")
      }
    }
    
  }
}