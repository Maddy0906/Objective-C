//
//  main.m
//  Assignment3
//
//  Created by まどか on 2017-08-21.
//  Copyright © 2017 Maddy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "inputHandler.h"

@interface Maths : NSObject
-(int) getRandomNumber;
-(void) add: (int) result;

@end

@implementation Maths
//returns a random number
-(int) getRandomNumber{
    return (int)arc4random_uniform(100);
}

@end

@interface question: NSObject
@property int accumulator;
@end

@implementation question{
    int accumulator;
}
-(void) setAccumulator: (int) value;
{     accumulator = value;  }
-(void) clear
{      accumulator = 0;  }
-(int) accumulator
{     return accumulator;  }
-(void) add: (int) value1, value2;
{     accumulator = value1 + value2;  }

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Maths *MathStuff;
        MathStuff = [[Maths alloc] init];
        
        int num1 = [MathStuff getRandomNumber];
        int num2 = [MathStuff getRandomNumber];
        int result;
        
        question *AdditionQuestion = [[question alloc]init];
        int n, right, wrong = 0;
        
        NSLog(@"MATHS!!");
        
        while (n > 5) {
            [AdditionQuestion add: num1,num2];
            NSLog(@"%i + %i = ?", num1, num2);
            [inputHandler getUserInput];
            
            if (result == num1+num2) {
                right ++;
                NSLog(@"Right!");
            }else{
                wrong ++;
                NSLog(@"Wrong!");
                
            }
            
            ++n;
        }
        
        NSLog(@"Your score was %i right, %i wrong " , right , wrong);
        if (right == 4)
            NSLog(@"---- 100%%");
        else if (right == 3)
            NSLog(@"---- 80%%");
        else if (right == 2)
            NSLog (@"---- 60%%");
        else if (right ==1)
            NSLog(@"---- 20%%");
        
    }
    return 0;
}
