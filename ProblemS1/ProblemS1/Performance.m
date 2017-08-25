//
//  Performance.m
//  ProblemS1
//
//  Created by まどか on 2017-08-24.
//  Copyright © 2017 Maddy. All rights reserved.
//

#import "Performance.h"

@implementation Performance

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self calclatePerformance];
    }
    return self;
}

-(void)calclatePerformance{
    super.perform = 2 *  super.ram + 3 * super.cpu + super.disk;
}

@end
