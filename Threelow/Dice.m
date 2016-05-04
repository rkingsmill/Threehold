//
//  Dice.m
//  Threelow
//
//  Created by Rosalyn Kingsmill on 2016-05-04.
//  Copyright © 2016 Rosalyn Kingsmill. All rights reserved.
//

#import "Dice.h"

@implementation Dice

-(void)randomize {
    
    _diceValue = arc4random_uniform(6) + 1;
}

@end
