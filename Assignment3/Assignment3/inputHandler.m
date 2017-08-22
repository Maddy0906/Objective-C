//
//  inputHandler.m
//  Assignment3
//
//  Created by まどか on 2017-08-21.
//  Copyright © 2017 Maddy. All rights reserved.
//

#import "inputHandler.h"

@implementation inputHandler
//+(NSString *) getUserInput:(int) maxlength{
//   
//}

+(NSString *) getUserInput{
    char myStr[256];
    fgets(myStr, 256, stdin);
    NSString *input = [[NSString stringWithCString:myStr encoding:NSUTF8StringEncoding]stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    return input;
    
}

@end
