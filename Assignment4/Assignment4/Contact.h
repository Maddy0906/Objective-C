//
//  Contact.h
//  Assignment4
//
//  Created by まどか on 2017-08-22.
//  Copyright © 2017 Maddy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Contact : NSObject

@property NSString* contactID;
@property NSString* name;
@property NSString* email;

-(id) initContactName:(NSString *)name email:(NSString*)email;
//- (NSString *)description;

@end
