//
//  BNRItemStore.m
//  HomePwner
//
//  Created by iMac on 6/1/14.
//  Copyright (c) 2014 CongenialApps. All rights reserved.
//

#import "BNRItemStore.h"
#import "BNRItem.h"

@interface BNRItemStore ()

@property (nonatomic)NSMutableArray *privateItems;

@end


@implementation BNRItemStore


+ (instancetype)sharedStore
{
    static BNRItemStore *sharedStore;
    
    if (!sharedStore)
    {
        sharedStore = [[self alloc] initPrivate];
    }
    
    return sharedStore;
}

-(instancetype)init
{
    [NSException raise:@"singleton" format:@"Use +[BNRItemStore shareStore]"];
    return nil;
}

-(instancetype)initPrivate
{
    self = [super init];
    if(self)
    {
        _privateItems = [[NSMutableArray alloc] init];
    }
    
    return self;
}

- (NSArray *)allItems
{
    return [self.privateItems copy];
}

- (BNRItem *)createItem
{
    BNRItem *item = [BNRItem randomItem];
    
    [self.privateItems addObject:item];
    return item;
}

@end
