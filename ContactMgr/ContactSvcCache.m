//
//  ContactSvcCache.m
//  ContactMgr
//
//  Created by Adam Bailey on 1/25/15.
//  Copyright (c) 2015 Adam Bailey. All rights reserved.
//

#import "ContactSvcCache.h"

@implementation ContactSvcCache

NSMutableArray *contacts = nil;

- (id) init {
    if (self = [super init]) {
        contacts = [NSMutableArray array];
        return self;
    }
    return nil;
}

- (Contact *) createContact:(Contact *)contact {
    [contacts addObject: contact];
    return contact;
}

- (NSMutableArray *) retrieveAllContacts {
    return contacts;
}

- (Contact *) updateContact:(Contact *)contact {
    return contact;
}

- (Contact *) deleteContact:(Contact *)contact {
    return contact;
}

@end
