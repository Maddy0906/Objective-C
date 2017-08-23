//
//  ContactList.m
//  Assignment4
//
//  Created by まどか on 2017-08-22.
//  Copyright © 2017 Maddy. All rights reserved.
//

#import "ContactList.h"

@implementation ContactList

-(instancetype) init {
    self = [super init];
    if (self) {
        _contactList = [[NSMutableArray alloc] init];
    }
    return self;
}

-(void)addContact:(Contact *)newContact{
    newContact.contactID = [NSString stringWithFormat:@"%lu", (unsigned long)[self.contactList count]];
    [self.contactList addObject:newContact];
    NSLog(@"You added: %@", newContact);
}



//display each contact like this "ID#: <full name> (email)"
-(void) dispContactList{
    NSString *description = @"";
    for (Contact *contact in self.contactList) {
        description = [description stringByAppendingString:[NSString stringWithFormat:@"%lu: <%@> (%@)\n", (unsigned long)[self.contactList indexOfObject:contact], contact.name, contact.email]];
        NSLog(@"%@", description);
        
    }
}

@end

