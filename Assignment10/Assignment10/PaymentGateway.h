//
//  PaymentGateway.h
//  Assignment10
//
//  Created by まどか on 2017-08-30.
//  Copyright © 2017 Maddy. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PaymentDelegate <NSObject>

-(void)processPaymentAmount:(NSInteger)amount;
-(BOOL)canProcessPayment;

@end


@interface PaymentGateway : NSObject

@property (nonatomic, weak) id <PaymentDelegate> paymentDelegate;

-(void)processPaymentAmount:(NSInteger)amount;

@end
