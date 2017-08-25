//
//  Computer.m
//  ProblemS1
//
//  Created by まどか on 2017-08-24.
//  Copyright © 2017 Maddy. All rights reserved.
//

#import "Computer.h"

@implementation Computer

- (id)initComputerName:(NSString *)name ram:(float *)ram cpu:(float *)cpu disk:(float *)disk
{
    self = [super init];
    if (self) {
        self.name = _name;
        self.ram = _ram;
        self.cpu = _cpu;
        self.disk = _disk;
    }
    return self;
}

-(void)calclatePerformance{
    
}

-(float) perform{
    return _perform;
}

@end
