//
//  GameController.m
//  Threelow
//
//  Created by Rosalyn Kingsmill on 2016-05-04.
//  Copyright © 2016 Rosalyn Kingsmill. All rights reserved.
//

#import "GameController.h"
#import "Dice.h"

@implementation GameController

-(instancetype)init {
    
   if (self = [super init])
    
    _dice = @[[[Dice alloc]init],
                              [[Dice alloc]init],
                              [[Dice alloc]init],
                              [[Dice alloc]init],
                              [[Dice alloc]init],
                              ];
    
    _heldDice = [[NSMutableArray alloc]init];
    
    return self;
}

-(void)roll {
    
    for (Dice *die in dice) {
        [die rollDice];
    }
    
    
    for (int idx = 0; idx < [dice count]; idx++) {
        NSLog(@"Die %d = %ld", idx + 1, dice[idx].diceValue);
    }
}

@end
