//
//  main.m
//  Threelow
//
//  Created by Rosalyn Kingsmill on 2016-05-04.
//  Copyright © 2016 Rosalyn Kingsmill. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import "GameController.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        GameController *gameController = [[GameController alloc]init];
        
        char inputChars[10];
        
        while (true) {
            
    
        printf("Type 'roll' to roll the dice");
        fgets(inputChars, 10, stdin);
        NSString *playerRolled = [NSString stringWithUTF8String:inputChars];
        playerRolled = [playerRolled stringByReplacingOccurrencesOfString:@"\n" withString:@""];
            
        if ([playerRolled isEqualToString:@"roll"]) {
            
        [gameController roll];
            
        }
            while (true) {
            printf("Which dice do you want to hold? (Type 'q' when you are done holding dice)");
            
            fgets(inputChars, 10, stdin);
            NSString *playerHolds = [NSString stringWithUTF8String:inputChars];
            playerHolds = [playerHolds stringByReplacingOccurrencesOfString:@"\n" withString:@""];
            
//
            [gameController holdDie:[playerHolds integerValue]];
            
                if ([playerHolds isEqualToString:@"q"]) {
                    
                }
                
            }
          
         
        }
       
    }
    return 0;
}
