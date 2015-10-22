//
//  GameController.h
//  Threelow
//
//  Created by Kristin Hunt on 10/21/15.
//  Copyright © 2015 Krispy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"

@interface GameController : NSObject

-(void)roll;
-(void)holdOrUnhold:(int)diceIndex;
-(void)printValue;

@end
