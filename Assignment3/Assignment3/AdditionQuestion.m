//
//  AdditionQuestion.m
//  Assignment3
//
//  Created by まどか on 2017-08-21.
//  Copyright © 2017 Maddy. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self generateQuestion];
    }
    return self;
}

-(void)generateQuestion {
    
    // Addition question and answer
    super.question = [NSString stringWithFormat:@"%.f + %.f?", super.num1, super.num2];
    super.answer = super.num1 + super.num2;
    
}
@end
