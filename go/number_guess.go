package main

import "fmt"
import "math/rand"
import "time"

func main(){
  rand.Seed(time.Now().Unix())
  fmt.Printf("Welcome to the Number Guess Game\n")
  
  var my_number = rand.Intn(100)
  var guess = 0
  fmt.Printf("I am thinking of a number between 1 and 100\n")
  for my_number != guess{
    fmt.Printf("Guess my number:")
    fmt.Scanf("%d", &guess)
    if guess == my_number{
      fmt.Printf("\nYou Guessed it!!!\n")
      break;
    }else if guess > my_number{
      fmt.Printf( "Lower ...\n")
    }else{
      fmt.Printf( "Higher ...\n")
    }
  }
  
}
