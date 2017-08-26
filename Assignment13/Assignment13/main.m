//
//  main.m
//  Assignment13
//
//  Created by まどか on 2017-08-25.
//  Copyright © 2017 Maddy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputController.h"
#import "NSString+PigLatin.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //Initialize Input collector and Contact list.
        InputController *inputController = [[InputController alloc]init];
        
        NSLog(@"Pig Latin!");
        NSString *userString = [inputController inputForPrompt:(@"input something")];
        
        [userString stringByPigLatinization];
    }
    return 0;
}
