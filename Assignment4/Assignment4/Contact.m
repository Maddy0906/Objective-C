//
//  Contact.m
//  Assignment4
//
//  Created by まどか on 2017-08-22.
//  Copyright © 2017 Maddy. All rights reserved.
//

#import "Contact.h"

@implementation Contact


-(id) initContact:(NSString *)name email:(NSString*)email {
    
    self = [super init];
    if (self) {
        self.name = _name;
        self.email = _email;
    }
    
    return self;
    
}

@end
