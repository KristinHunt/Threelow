//
//  main.m
//  Threelow
//
//  Created by Kristin Hunt on 10/21/15.
//  Copyright © 2015 Krispy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import "InputCollector.h"
#import "GameController.h"

// @interface GameController ()

int main(int argc, const char * argv[]) {
  @autoreleasepool {
  
//    
//    NSMutableArray *allDice = [[NSMutableArray alloc] init];
//    
//    NSMutableArray *heldDice = [[NSMutableArray alloc] init];
    
//    DiceList *storedDice = [[DiceList alloc] init];
//    
//    Dice *dice1 = [[Dice alloc] init];
//    NSLog(@"Your number is %d", dice1.sideValue);
//    
//    Dice *dice2 = [[Dice alloc] init];
//    NSLog(@"Your number is %d", dice2.sideValue);
//    
//    Dice *dice3 = [[Dice alloc] init];
//    NSLog(@"Your number is %d", dice3.sideValue);
//    
//    Dice *dice4 = [[Dice alloc] init];
//    NSLog(@"Your number is %d", dice4.sideValue);
//    
//    Dice *dice5 = [[Dice alloc] init];
//    NSLog(@"Your number is %d", dice5.sideValue);
//    
//    [controller.allDice addObject:dice1];
//    [controller.allDice addObject:dice2];
//    [controller.allDice addObject:dice3];
//    [controller.allDice addObject:dice4];
//    [controller.allDice addObject:dice5];

//    Dice *addedDice = [[Dice alloc] init];
//
    GameController *controller = [GameController new];
    
    InputCollector *input = [InputCollector new];
    
    while (YES) {
    
//    Dice *dice1 = [[Dice alloc] init];
//    NSLog(@"Your number is %d", dice1.sideValue);

    
    NSString *question = @"What would you like do next? \n roll - Rolls dice \n dice index - Holds or unholds dice of that index \n quit - Exit \n Application: ";
    
    NSString *answer = [input inputForPrompt: question];
    
    NSLog(@"Answer: %@", answer);
    
      if ([answer isEqualToString:@"roll"]) {
        [controller roll];
        [controller printValue];
        
      } else if ([answer isEqualToString:@"quit"]) {
        break;
      } else {
        [controller holdOrUnhold:answer.intValue];
      }
    
    }
  }
  return 0;
}