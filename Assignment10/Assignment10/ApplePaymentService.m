//
//  ApplePaymentService.m
//  Assignment10
//
//  Created by まどか on 2017-08-30.
//  Copyright © 2017 Maddy. All rights reserved.
//

#import "ApplePaymentService.h"

@implementation ApplePaymentService

-(void)processPaymentAmount:(NSInteger)amount {
    
    NSLog(@"ApplePay processed amount $%lu.", amount);
    
}

-(BOOL)canProcessPayment {
    
    // Randomly determined ability to process payment
    if(arc4random_uniform(2) == 0) {
        return NO;
    }
    
    else {
        return YES;
    }
}


@end
