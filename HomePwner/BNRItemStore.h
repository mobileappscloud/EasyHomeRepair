//
//  BNRItemStore.h
//  HomePwner
//
//  Created by iMac on 6/5/14.
//  Copyright (c) 2014 CongenialApps. All rights reserved.
//

#import <Foundation/Foundation.h>


@class BNRItem;

@interface BNRItemStore : NSObject
+ (instancetype)sharedStore;

@property (nonatomic, readonly, copy) NSArray *allItems;

- (BNRItem *)createItem;
- (void)removeItem:(BNRItem *)item;

- (void)moveItemAtIndex:(NSUInteger)fromIndex
                toIndex:(NSUInteger)toIndex;

@end
