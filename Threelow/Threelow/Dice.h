//
//  Dice.h
//  Threelow
//
//  Created by Kristin Hunt on 10/21/15.
//  Copyright © 2015 Krispy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dice : NSObject

@property (nonatomic) int sideValue;
@property BOOL isHeld;

-(void)getRandomNumber;


@end
