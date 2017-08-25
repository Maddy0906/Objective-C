//
//  InputController.m
//  ProblemS1
//
//  Created by まどか on 2017-08-24.
//  Copyright © 2017 Maddy. All rights reserved.
//

#import "InputController.h"

@implementation InputController
-(NSString *)inputForPrompt:(NSString *)promptString{
    char myStr[256];
    
    //output promptString
    NSLog(@"%@",promptString);
    
    fgets(myStr, 256, stdin);
    
    NSString *input = [[NSString stringWithCString:myStr encoding:NSUTF8StringEncoding]
                        stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
                       
                       return input;
                        
}

@end
