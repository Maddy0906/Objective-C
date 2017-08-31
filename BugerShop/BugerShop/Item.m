//
//  Item.m
//  BugerShop
//
//  Created by まどか on 2017-08-30.
//  Copyright © 2017 Maddy. All rights reserved.
//

#import "Item.h"

@implementation Item



- (instancetype)init
{
    self = [super init];
    if (self) {
        _name = self.name;
        _packing = self.packing;
        _price = self.price;
    }
    return self;
}

@end
