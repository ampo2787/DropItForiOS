//
//  DropitBehavier.m
//  DropIt
//
//  Created by JihoonPark on 15/10/2018.
//  Copyright © 2018 JihoonPark. All rights reserved.
//

#import "DropitBehavier.h"

@interface DropitBehavier()

@property (strong, nonatomic) UIGravityBehavior * gravity;
@property (strong, nonatomic) UICollisionBehavior * collider;

@end

@implementation DropitBehavier

- (UIGravityBehavior *)gravity{
    if(_gravity == nil){
        _gravity = [[UIGravityBehavior alloc]init];
        _gravity.magnitude = 0.9;
    }
    return _gravity;
}

- (UICollisionBehavior *)collider{
    if(_collider == nil){
        _collider = [[UICollisionBehavior alloc]init];
        _collider.translatesReferenceBoundsIntoBoundary = YES;
    }
    return _collider;
}

- (instancetype)init{
    self = [super init];
    [self addChildBehavior:self.gravity];
    [self addChildBehavior:self.collider];
    return self;
}

- (void)addItem:(id<UIDynamicItem>)item{
    [self.gravity addItem:item];
    [self.collider addItem:item];
}

- (void)removeItem:(id<UIDynamicItem>)item{
    [self.gravity removeItem:item];
    [self.collider removeItem:item];
}

@end
