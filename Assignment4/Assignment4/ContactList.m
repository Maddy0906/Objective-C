//
//  ContactList.m
//  Assignment4
//
//  Created by まどか on 2017-08-22.
//  Copyright © 2017 Maddy. All rights reserved.
//

#import "ContactList.h"
#import "Contact.h"

@implementation ContactList

-(id) init {
    self = [super init];
    if (self) {
        self.listContacts = [[NSMutableArray alloc] init];
    }
    return self;
}

-(void)addContact:(Contact *)newContact{
    [self.listContacts addObject:newContact];
    NSLog(@"You added: %@", newContact);
}


//display each contact like this "ID#: <full name> (email)"
-(void) dispContactList{
    NSString *description = @"";
    for (Contact *contact in self.listContacts) {
        description = [description stringByAppendingString:[NSString stringWithFormat:@"%lu: <%@> (%@)\n", (unsigned long)[self.listContacts indexOfObject:contact], contact.name, contact.email]];
        NSLog(@"%@", description);
        
    }
}


@end
