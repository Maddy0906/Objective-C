//
//  ContactList.h
//  Assignment4
//
//  Created by まどか on 2017-08-22.
//  Copyright © 2017 Maddy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contactlist.h"
#import "Contact.h"

@interface ContactList : NSObject

@property NSMutableArray* listContacts;

-(id) init;
-(void)addContact:(Contact *)newContact;
-(void)dispContactList;


@end
