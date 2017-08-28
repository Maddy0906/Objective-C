//
//  PlayerInput.m
//  Assignment6
//
//  Created by まどか on 2017-08-26.
//  Copyright © 2017 Maddy. All rights reserved.
//

#import "PlayerInput.h"

@implementation PlayerInput

+(NSString *)readPlayerInput {
    
    char inputChars[255];
    
    // Read a line of input and convert to NSString
    fgets(inputChars, 255, stdin);
    NSString *inputString = [NSString stringWithCString:inputChars encoding:NSUTF8StringEncoding];
    
    // Trim string to remove whitespace and newline characters
    NSString *trimmedString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    return trimmedString;
    
}

@end
