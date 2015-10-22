//
//  GameController.m
//  Threelow
//
//  Created by Kristin Hunt on 10/21/15.
//  Copyright © 2015 Krispy. All rights reserved.
//

#import "GameController.h"

@interface GameController ()

@property (nonatomic, strong) NSMutableArray *allDice;

@end

@implementation GameController

- (instancetype)init
{
  self = [super init];
  if (self) {
    _allDice = [[NSMutableArray alloc] init];
    
    [self initDices];
  }
  return self;
}

- (void)initDices {
  for (int i = 0; i < 5; i++) {
    [self.allDice addObject:[Dice new]];
  }
}

- (void)roll {
  for (Dice *dice in self.allDice) {
    if (!dice.isHeld) {
      [dice getRandomNumber];
    }
  }
}

-(void)holdOrUnhold:(int)diceIndex {
  Dice *dice = self.allDice[diceIndex];
  dice.isHeld = !dice.isHeld;
  
  if (dice.isHeld) {
    NSLog(@"Dice number %d is now held", diceIndex);
  } else {
    NSLog(@"Dice number %d is now unheld", diceIndex);
  }
}

-(void)printValue {
  for (int i = 0; i < self.allDice.count; i++) {
    Dice *dice = self.allDice[i];
    if (dice.isHeld) {
      NSLog(@"[dice number %d rolled %d]", i, dice.sideValue);
    } else {
      NSLog(@"dice number %d rolled %d", i, dice.sideValue);
    }
  }
}













@end
