//
//  GameController.h
//  Threelow
//
//  Created by Rosalyn Kingsmill on 2016-05-04.
//  Copyright © 2016 Rosalyn Kingsmill. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"

@interface GameController : NSObject

@property (strong, nonatomic) NSArray *dice;
@property (strong, nonatomic) NSMutableArray *heldDice;

-(void)roll:
-(instancetype)init;

@end
