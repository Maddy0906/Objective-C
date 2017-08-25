//
//  Computer.h
//  ProblemS1
//
//  Created by まどか on 2017-08-24.
//  Copyright © 2017 Maddy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Computer : NSObject

@property NSString* name;
@property (nonatomic) float* ram;
@property (nonatomic) float* cpu;
@property (nonatomic) float* disk;
@property (nonatomic) float perform;

-(void)calclatePerformance;

@end
