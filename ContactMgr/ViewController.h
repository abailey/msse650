//
//  ViewController.h
//  ContactMgr
//
//  Created by Adam Bailey on 1/25/15.
//  Copyright (c) 2015 Adam Bailey. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITextField *name;

@property (weak, nonatomic) IBOutlet UITextField *phone;
@property (weak, nonatomic) IBOutlet UITextField *email;
- (IBAction)saveContact:(id)sender;
- (IBAction)deleteContact:(id)sender;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

