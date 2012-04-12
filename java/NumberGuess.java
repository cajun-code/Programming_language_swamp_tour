import java.util.Random;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.BufferedReader;
import java.io.InputStreamReader;

public class NumberGuess{
  
  private int thinking_number;
  
  public NumberGuess(){
    Random generator = new Random();
    thinking_number = generator.nextInt(100);
    System.out.println("I am thinking of a number between 1 and 100");
  }
  public int check(int guess){
    if (thinking_number == guess) {
      return 0;
    }else if(thinking_number > guess){
      return -1;
    }else{
      return 1;
    }
  }
  public static void main(String[] args){
    System.out.println("Welcome to the Number Guess Game");
    
    NumberGuess ng = new NumberGuess();
    String guess = "";
    BufferedReader br = new BufferedReader(
      new InputStreamReader(System.in));
    DataInputStream dis = new DataInputStream(System.in);
    while(true){
      try{
        System.out.print("Guess my Number: ");
        guess = br.readLine();
        //System.out.println ("Your Guess: " + guess);
        int result = ng.check(Integer.parseInt(guess));
        if (result == 0){
          System.out.println("\nYou Guessed it!!!\n");
          break;
        }else if (result == -1)
          System.out.println("Higher...");
        else
          System.out.println("Lower...");
      }catch(IOException e){
        e.printStackTrace();
      }
    } 
  }
}