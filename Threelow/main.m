//
//  main.m
//  Threelow
//
//  Created by Rosalyn Kingsmill on 2016-05-04.
//  Copyright © 2016 Rosalyn Kingsmill. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        
//        NSArray<Dice*> *dice = @[ [[Dice alloc]init],
//                                  [[Dice alloc]init],
//                                  [[Dice alloc]init],
//                                  [[Dice alloc]init],
//                                  [[Dice alloc]init],
//                                  ];
        
//        NSMutableArray<Dice*> *holdDice = [[Dice alloc]init];
//        
        
        while (true) {
            
        char inputChars[10];
        printf("Type 'roll' to roll the dice");
        fgets(inputChars, 10, stdin);
        NSString *playerRolled = [NSString stringWithUTF8String:inputChars];
        playerRolled = [playerRolled stringByReplacingOccurrencesOfString:@"\n" withString:@""];
            
        if ([playerRolled isEqualToString:@"roll"]) {
            
        [GameController roll];
                
//        for (Dice *die in dice) {
//            [die rollDice];
//        }
//
//        
//        for (int idx = 0; idx < [dice count]; idx++) {
//            NSLog(@"Die %d = %ld", idx + 1, dice[idx].diceValue);
//        }
        }
        }
       
    }
    return 0;
}
