//
//  Pizza.h
//  Assignment8
//
//  Created by まどか on 2017-08-26.
//  Copyright © 2017 Maddy. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, PizzaSize) {
    Small,
    Medium,
    Large,
};


@interface Pizza : NSObject

@property (nonatomic) PizzaSize size;
@property (nonatomic, strong) NSArray *toppings;

-(instancetype)initWithSize:(PizzaSize)size andToppings:(NSArray *)toppings;

@end
