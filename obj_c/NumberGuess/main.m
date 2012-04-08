//
//  main.m
//  NumberGuess
//
//  Created by Allan Davis on 4/4/12.
//  Copyright (c) 2012 CajunCode. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <stdlib.h>
#import "GuessControl.h"
int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
      printf("Welcome to the Number Guess Game\n");
        GuessControl * gc = [[GuessControl alloc]init];
      
      int guess = 0;
      
        while( TRUE ){
           printf("Guess my number:");
           scanf("%d", &guess);
            int result = [gc check: guess] ;
          if (result == 0){
              printf("\nYou Guessed it!!!\n");
            break;
          }else if (result == -1){
              printf( "Lower ...\n");
          }else{
              printf( "Higher ...\n");
          }
        }
        
    }
    return 0;
}

