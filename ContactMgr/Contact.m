//
//  Contact.m
//  ContactMgr
//
//  Created by Adam Bailey on 1/25/15.
//  Copyright (c) 2015 Adam Bailey. All rights reserved.
//

#import "Contact.h"

@implementation Contact
- (NSString *) description {
    return [NSString stringWithFormat:@"%@ %@ %@", _name, _phone, _email];
}
@end
