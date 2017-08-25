//
//  QuestionFactory.h
//  Assignment5
//
//  Created by まどか on 2017-08-24.
//  Copyright © 2017 Maddy. All rights reserved.
//


#import <Foundation/Foundation.h>
#import "Question.h"
#import "AdditionQuestion.h"
#import "SubtractionQuestion.h"
#import "MultiplicationQuestion.h"
#import "DivisionQuestion.h"

@interface QuestionFactory : NSObject

// Methods
-(Question *)generateRandomQuestion;

@end
