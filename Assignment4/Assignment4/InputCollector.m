//
//  InputCollector.m
//  Assignment4
//
//  Created by まどか on 2017-08-22.
//  Copyright © 2017 Maddy. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector

-(NSString *)inputForPrompt:(NSString *)promptString{
    //max character
    char myStr[256];
    
    //output promptString
    NSLog(@"%@", promptString);
    
    fgets(myStr, 256, stdin);
    
    NSString *inputString = [[NSString stringWithCString:myStr encoding:NSUTF8StringEncoding]
                              stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    return inputString;
    
}

@end
