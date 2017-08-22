//
//  Contact.h
//  Assignment4
//
//  Created by まどか on 2017-08-22.
//  Copyright © 2017 Maddy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Contact : NSObject

@property NSString* name;
@property NSString* email;

-(id) initContact:(NSString *)name email:(NSString*)email;

@end
