//
//  KitchenDelegate.h
//  Assignment8
//
//  Created by まどか on 2017-08-31.
//  Copyright © 2017 Maddy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"

@class Pizza,Kitchen;

@protocol KitchenDelegate <NSObject>

- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings;
- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen;

@optional

- (void)kitchenDidMakePizza:(Pizza *)pizza;

@end
