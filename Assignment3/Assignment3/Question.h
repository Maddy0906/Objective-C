//
//  Question.h
//  Assignment3
//
//  Created by まどか on 2017-08-21.
//  Copyright © 2017 Maddy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Question : NSObject

@property (nonatomic) float answer;
@property (nonatomic) NSString *question;
@property (nonatomic) float num1;
@property (nonatomic) float num2;

-(void)generateQuestion;

@end
