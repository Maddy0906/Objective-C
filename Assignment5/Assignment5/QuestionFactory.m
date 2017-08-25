//
//  QuestionFactory.m
//  Assignment5
//
//  Created by まどか on 2017-08-24.
//  Copyright © 2017 Maddy. All rights reserved.
//

#import "QuestionFactory.h"

@implementation QuestionFactory

-(Question *)generateRandomQuestion {
    
    // Array of Question subclass names
    NSArray *questionSubclassNames = @[@"AdditionQuestion", @"SubtractionQuestion", @"MultiplicationQuestion", @"DivisionQuestion"];
    
    // Pick a random subclass name
    NSString *className = questionSubclassNames[arc4random_uniform(4)];
    
    // Create a random Question 
    Question *randomQuestion = [[NSClassFromString(className) alloc] init];
    
    return randomQuestion;
}

@end
