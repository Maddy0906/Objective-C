//
//  MultiplicationQuestion.m
//  Assignment5
//
//  Created by まどか on 2017-08-24.
//  Copyright © 2017 Maddy. All rights reserved.
//

#import "MultiplicationQuestion.h"

@implementation MultiplicationQuestion

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self generateQuestion];
    }
    return self;
}

-(void)generateQuestion{
    super.question = [NSString stringWithFormat:@"%.f * %f?", super.num1, super.num2];
    super.answer = super.num1 * super.num2;
}

@end
