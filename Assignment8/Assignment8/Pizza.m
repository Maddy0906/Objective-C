//
//  Pizza.m
//  Assignment8
//
//  Created by まどか on 2017-08-26.
//  Copyright © 2017 Maddy. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza

-(instancetype)initWithSize:(PizzaSize)size andToppings:(NSArray *)toppings {
    
    self = [super init];
    if (self) {
        _size = size;
        _toppings = toppings;
    }
    return self;
}

-(NSString *)description {
    
    NSMutableString *pizzaString = [[NSMutableString alloc] init];
    NSString *mySize;
    
    if(self.size == 0) {
        mySize = @"small";
    }
    
    else if(self.size == 1) {
        mySize = @"medium";
    }
    
    else if(self.size == 2) {
        mySize = @"large";
    }
    
    [pizzaString appendString:mySize];
    
    // iterate through contact list and build contact name and email address string
    for(NSString *currentTopping in self.toppings) {
        NSString *appendTopping = [NSString stringWithFormat:@" %@", currentTopping];
        [pizzaString appendString:appendTopping];
    }
    
    return pizzaString;
    
}

@end
