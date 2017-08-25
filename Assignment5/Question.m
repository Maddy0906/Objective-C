//
//  Question.m
//  Assignment3
//
//  Created by まどか on 2017-08-21.
//  Copyright © 2017 Maddy. All rights reserved.
//

#import "Question.h"

@implementation Question

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        // Create two random operands between 10 and 100
        _num1 = arc4random_uniform(100);
        _num2 = arc4random_uniform(100);
        
        _startTime = [NSDate date];
        
    }
    return self;
}

-(void)generateQuestion {
    
}

// Override getter for answer variable
-(float)answer {
    
    _endTime = [NSDate date];
    return _answer;
    
}

-(NSTimeInterval)answerTime {
    
    // Calculate difference between start and end time
    NSTimeInterval timeInterval = [self.endTime timeIntervalSinceDate: self.startTime];
    
    return timeInterval;
}



@end
