//
//  main.m
//  ProblemS1
//
//  Created by まどか on 2017-08-24.
//  Copyright © 2017 Maddy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Computer.h"
#import "InputController.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //Initialize Input contrl
        InputController *inputController = [[InputController alloc] init];
        
        int n = 0;
        float best = 0;
        float second = 0;
        
        NSLog(@"Computer Purchase");
        
        NSString *userString = [inputController inputForPrompt:(@"How many computer?")];
        
        n = [userString intValue];
        
        for (int i =0; i < n; i++) {
            NSString *compInfo = [inputController inputForPrompt:(@"Enter ComputerName RAM CPU speed Disk drive space")];
            
            [Computer calclatePerformance];
        }
        
        if (<#condition#>) {
            <#statements#>
        }
        
    }
    return 0;
}
