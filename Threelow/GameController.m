//
//  GameController.m
//  Threelow
//
//  Created by Rosalyn Kingsmill on 2016-05-04.
//  Copyright © 2016 Rosalyn Kingsmill. All rights reserved.
//

#import "GameController.h"


@implementation GameController

-(instancetype)init {
    
   if (self = [super init])
    
       _dice = [NSMutableArray arrayWithArray:@[[[Dice alloc]init],
                              [[Dice alloc]init],
                              [[Dice alloc]init],
                              [[Dice alloc]init],
                              [[Dice alloc]init],
                              ]];
    
    _heldDice = [[NSMutableArray alloc]init];
    
    return self;
}

-(void)roll {
    
    for (NSInteger idx = 0; idx < self.dice.count; idx++)
    {
        Dice *dice = self.dice[idx];
        [dice randomize];
        NSLog(@"Die %ld = %ld", (long)idx +1, dice.diceValue);
    }
}

-(void)holdDie: (NSInteger)whichDie {
    
    NSInteger diceIndex = whichDie - 1;
    //add value to heldDice array
    [self.heldDice addObject:self.dice[diceIndex]];
    //remove object in Dice array
    [self.dice removeObjectAtIndex:diceIndex];
    
    int i, score, value;
    score = 0;
    value = 0;
    
    for (i = 0; i < [_heldDice count]; i++)
    {
        value = (int)[[_heldDice objectAtIndex: i] diceValue];
        score += value;
    }
    
    NSLog (@"Your score is:%d", score);
}




@end
