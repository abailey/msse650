//
//  ContactSvc.h
//  ContactMgr
//
//  Created by Adam Bailey on 1/25/15.
//  Copyright (c) 2015 Adam Bailey. All rights reserved.
//

#ifndef ContactMgr_ContactSvc_h
#define ContactMgr_ContactSvc_h

#import <Foundation/Foundation.h>
#import "Contact.h"

@protocol ContactSvc <NSObject>

- (Contact *) createContact: (Contact *) contact;
- (NSMutableArray *) retrieveAllContacts;
- (Contact *) updateContact: (Contact *) contact;
- (Contact *) deleteContact: (Contact *) contact;
@end

#endif
