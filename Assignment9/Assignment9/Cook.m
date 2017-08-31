//
//  Cook.m
//  Assignment9
//
//  Created by まどか on 2017-08-30.
//  Copyright © 2017 Maddy. All rights reserved.
//

#import "Cook.h"

@implementation Cook

-(double)foodTruck:(FoodTruck *)truck priceForFood:(NSString *)food {
    
    double price;
    
    if([food isEqualToString:@"bao"]) {
        price = 5.50;
    }
    
    else if([food isEqualToString:@"shortbread"]) {
        price = 7.50;
    }
    
    return price;
}

@end
