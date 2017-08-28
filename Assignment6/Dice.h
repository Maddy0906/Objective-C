//
//  Dice.h
//  Assignment6
//
//  Created by まどか on 2017-08-26.
//  Copyright © 2017 Maddy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dice : NSObject

@property (nonatomic) NSInteger currentValue;
@property (nonatomic) BOOL isHeld;

-(void)randomizeCurrentValue;

@end
