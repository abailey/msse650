//
//  ViewController.m
//  ContactMgr
//
//  Created by Adam Bailey on 1/25/15.
//  Copyright (c) 2015 Adam Bailey. All rights reserved.
//

#import "ViewController.h"

#import "Contact.h"
#import "ContactSvcCache.h"

@interface ViewController ()

@end

@implementation ViewController

ContactSvcCache *contactSvc = nil;

- (void)viewDidLoad {
    [super viewDidLoad];
    contactSvc = [[ContactSvcCache alloc] init];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)saveContact:(id)sender {
    NSLog(@"saveContact: entering");
    [self.view endEditing:YES];
    Contact *contact = [[Contact alloc] init];
    contact.name = _name.text;
    contact.phone = _phone.text;
    contact.email = _email.text;
    [contactSvc createContact:contact];
    
    [self.tableView reloadData];
    NSLog(@"saveContact: contact saved");
}

- (IBAction)deleteContact:(id)sender {
    NSLog(@"deleteContact");
    [self.view endEditing:YES];
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [[contactSvc retrieveAllContacts] count];
}

- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *simpleTableIdentifier = @"SimpleTableItem";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault  reuseIdentifier:simpleTableIdentifier];
    }
    Contact *contact = [[contactSvc retrieveAllContacts] objectAtIndex:indexPath.row];
    cell.textLabel.text = [contact description];
    cell.textLabel.font = [UIFont systemFontOfSize:14];
    return cell;
}

@end
