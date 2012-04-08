#include <stdlib.h>

int main(){
  
  printf("Welcome to the Number Guess Game\n");

  int my_number = arc4random() % 100; /* rand() % 100; */
  int guess = 0;
  printf("I am thinking of a number between 1 and 100\n");
  while( my_number != guess){
    printf("Guess my number:");
    scanf("%d", &guess);
    if (guess == my_number){
      printf("\nYou Guessed it!!!\n");
      break;
    }else if (guess > my_number){
        printf( "Lower ...\n");
    }else{
        printf( "Higher ...\n");
    }
  }
    
  return 0;
}