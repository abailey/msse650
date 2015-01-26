//
//  Contact.h
//  ContactMgr
//
//  Created by Adam Bailey on 1/25/15.
//  Copyright (c) 2015 Adam Bailey. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Contact : NSObject
    @property (nonatomic, strong) NSString *name;
    @property (nonatomic, strong) NSString *phone;
    @property (nonatomic, strong) NSString *email;
@end
