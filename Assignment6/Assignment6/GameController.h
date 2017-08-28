//
//  GameController.h
//  Assignment6
//
//  Created by まどか on 2017-08-26.
//  Copyright © 2017 Maddy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GameController : NSObject

@property (nonatomic) NSMutableArray *diceArray;
@property (nonatomic) NSMutableSet *heldDice;
@property (nonatomic) NSInteger currentScore;

-(void)holdDie:(int)index;
-(NSString *)descriptionRolled;
-(NSString *)descriptionHeld;
-(void)resetDice;
-(NSInteger)returnCurrentScore;

@end
