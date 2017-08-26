//
//  InputController.m
//  Assignment13
//
//  Created by まどか on 2017-08-25.
//  Copyright © 2017 Maddy. All rights reserved.
//

#import "InputController.h"

@implementation InputController
-(NSString *)inputForPrompt: (NSString *)promptString{
    //max character
    char myStr[256];
    
    //output promptString
    NSLog(@"%@", promptString);
    fgets(myStr, 256, stdin);
    
    NSString *inputString = [[NSString stringWithCString:myStr encoding:NSUTF8StringEncoding]
                             stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    
    return inputString;
    
}

@end
