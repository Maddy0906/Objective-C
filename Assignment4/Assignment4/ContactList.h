//
//  ContactList.h
//  Assignment4
//
//  Created by まどか on 2017-08-22.
//  Copyright © 2017 Maddy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

@interface ContactList : NSObject

// Properties
@property (nonatomic) NSMutableArray *contactList;

// Methods
-(void)addContact:(Contact *)newContact;
-(void) dispContactList;



@end
