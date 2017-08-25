//
//  ScoreKeeper.m
//  Assignment3
//
//  Created by まどか on 2017-08-21.
//  Copyright © 2017 Maddy. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

-(NSString *)getTheScore {
    
    NSString *myScore = [[NSString alloc] init];
    
    // Check if any questions have been answered 
    if((_numOfCorrectAnswers + _numOfIncorrectAnswers) != 0) {
        
        // Calculate score percentage
        float scorePercentage = ((float)_numOfCorrectAnswers) / ((float)_numOfCorrectAnswers + (float)_numOfIncorrectAnswers);
        scorePercentage = scorePercentage * 100;
        
        // Build score string
        myScore = ([NSString stringWithFormat:@"Score: %d right, %d wrong ---- %.2f%%", _numOfCorrectAnswers, _numOfIncorrectAnswers, scorePercentage]);
        
    }
    
    return myScore;
}

@end
