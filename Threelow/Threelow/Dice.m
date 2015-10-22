//
//  Dice.m
//  Threelow
//
//  Created by Kristin Hunt on 10/21/15.
//  Copyright © 2015 Krispy. All rights reserved.
//

#import "Dice.h"

@implementation Dice

- (void)getRandomNumber {
  self.sideValue = (arc4random() % 6) + 1;
}

@end
