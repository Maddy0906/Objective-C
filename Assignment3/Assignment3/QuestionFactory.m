//
//  QuestionFactory.m
//  Assignment3
//
//  Created by まどか on 2017-08-21.
//  Copyright © 2017 Maddy. All rights reserved.
//

#import "QuestionFactory.h"

@implementation QuestionFactory

-(Question *)generateRandomQuestion {
    
    // Array of Question subclass names
    NSArray *questionSubclassNames = @[@"AdditionQuestion"];
    
    // Pick a random subclass name
    NSString *className = questionSubclassNames[arc4random_uniform(1)];
    
    // Create a random Question based on random subclass name
    Question *randomQuestion = [[NSClassFromString(className) alloc] init];
    
    return randomQuestion;
}

@end
