//
//  GuessControl.m
//  NumberGuess
//
//  Created by Allan Davis on 4/7/12.
//  Copyright (c) 2012 CajunCode. All rights reserved.
//

#import "GuessControl.h"

@interface GuessControl()

@property int thinking_number;

@end

@implementation GuessControl

@synthesize thinking_number = _thinking_number;

- (int) check:(int)guess{
    if (guess == self.thinking_number){
        return 0;
    }else if (self.thinking_number > guess){
        return 1;
    }else{
        return -1;
    }
}

-(id) init{
    self = [super init];
    
    if (self) {
        _thinking_number = arc4random() % 100; /* rand() % 100; */
        printf("I am thinking of a number between 1 and 100\n");
    }
    return self;
}

@end
