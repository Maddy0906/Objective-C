//
//  PaymentGateway.m
//  Assignment10
//
//  Created by まどか on 2017-08-30.
//  Copyright © 2017 Maddy. All rights reserved.
//

#import "PaymentGateway.h"

@implementation PaymentGateway

-(void)processPaymentAmount:(NSInteger)amount {
    
    // Check if delegate can process the payment
    if([self.paymentDelegate canProcessPayment]) {
        
        // Pass on payment processing to delegate
        [self.paymentDelegate processPaymentAmount:amount];
    }
    
    else {
        NSLog(@"Sorry unable to process the payment.");
    }
}


@end
