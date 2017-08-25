//
//  QuestionManager.m
//  Assignment3
//
//  Created by まどか on 2017-08-21.
//  Copyright © 2017 Maddy. All rights reserved.
//

#import "QuestionManager.h"

@implementation QuestionManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        // Initialize property array
        _questions = [NSMutableArray array];
    }
    return self;
}

-(NSString *)timeOutput{
    int totalTime;
    int averageTime;
    
    // Iterate through questions array to calculate total time
    for(Question *currentQuestion in self.questions) {
        totalTime += [currentQuestion answerTime];
    }
    
    //avarage time
    int quesionsCount = (sizeof _questions) / (sizeof _questions[0]);
    
    if (quesionsCount !=0) {
        NSLog(@"averageTime:%d\n",averageTime);
        NSLog(@"totalTime:%d\n",totalTime);
        NSLog(@"questions:%d\n", quesionsCount);
        
        averageTime = totalTime / quesionsCount;
    }

    
    NSString *timeString = [NSString stringWithFormat:@"Total time: %ds, average time: %ds\n", totalTime, averageTime];
    
    return timeString;
    
}


@end
