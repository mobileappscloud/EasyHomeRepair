//
//  BNRItemsViewController.m
//  HomePwner
//
//  Created by iMac on 6/1/14.
//  Copyright (c) 2014 CongenialApps. All rights reserved.
//

#import "BNRItemsViewController.h"
#import "BNRItem.h"
#import "BNRItemStore.h"

@implementation BNRItemsViewController

- (instancetype) init
{
    self = [super initWithStyle:UITableViewStylePlain];
    if (self)
    {
        for (int i = 0; i < 5; i++)
        {
            [[BNRItemStore sharedStore] createItem];
        }
    }
    return self;
}

- (instancetype)initWithStyle:(UITableViewStyle)style
{
    return [self init];
}

- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section
{
    return [[[BNRItemStore sharedStore] allItems] count];
}

@end
