//
//  ScoreKeeper.h
//  Assignment3
//
//  Created by まどか on 2017-08-21.
//  Copyright © 2017 Maddy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject

@property (nonatomic) int numOfCorrectAnswers;
@property (nonatomic) int numOfIncorrectAnswers;

-(NSString *)getTheScore;

@end
