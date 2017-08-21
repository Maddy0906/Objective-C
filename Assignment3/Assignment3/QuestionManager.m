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


@end
