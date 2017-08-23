//
//  main.m
//  Assignment4
//
//  Created by まどか on 2017-08-22.
//  Copyright © 2017 Maddy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Contact.h"
#import "ContactList.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //Initialize Input collector and Contact list.
        InputCollector *inputCollector = [[InputCollector alloc]init];
        ContactList *contactList = [[ContactList alloc] init];
        
        // Boolean to control loop
        BOOL runLoop = YES;
        
        while (runLoop) {
        // display and ask menu
            NSLog(@"What would you like to do next?\n");
        NSLog(@"new - Create a new contact  \n");
        NSLog(@"list - List all contacts \n");
        NSLog(@"quit - Exit Application \n");
        NSString *userString = [inputCollector inputForPrompt:(@"> _ ")];

        
        //each case statements
        if([userString isEqualToString:@"new"]){
            NSLog(@"Add new contact");
            NSString *fullNameInput = [inputCollector inputForPrompt:(@"What is the full name?")];
            NSString *emailInput = [inputCollector inputForPrompt:(@"What is the email?")];
            
            
            //Create a new contact and then pass in the full name/ email input.
            Contact *newContact = [[Contact alloc]init];
            newContact.name = fullNameInput;
            newContact.email = emailInput;
            
            //Add the new contact object to the ContactList Array.
            [contactList addContact:newContact];
            
        }
        else if([userString isEqualToString:@"list"]){
            NSLog(@"Your contacts list");
            [contactList dispContactList];
        }
            
        // When input "quit" command
        if ([userString isEqualToString:@"quit"]){
            break;
        }
        }
    }
    return 0;
}
