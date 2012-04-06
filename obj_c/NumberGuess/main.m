//
//  main.m
//  NumberGuess
//
//  Created by Allan Davis on 4/4/12.
//  Copyright (c) 2012 CajunCode. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <stdlib.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
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
        
    }
    return 0;
}

