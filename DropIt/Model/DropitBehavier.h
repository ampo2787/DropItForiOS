//
//  DropitBehavier.h
//  DropIt
//
//  Created by JihoonPark on 15/10/2018.
//  Copyright © 2018 JihoonPark. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DropitBehavier : UIDynamicBehavior

- (void)addItem:(id <UIDynamicItem>)item;
- (void)removeItem:(id <UIDynamicItem>)item;

@end

NS_ASSUME_NONNULL_END
