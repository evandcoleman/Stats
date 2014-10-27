//
//  StatViewModel.m
//  StatHat
//
//  Created by Evan Coleman on 10/26/14.
//  Copyright (c) 2014 Evan Coleman. All rights reserved.
//

#import "StatViewModel.h"

#import "Stat.h"

@implementation StatViewModel

- (instancetype)initWithStat:(Stat *)stat {
    self = [super init];
    if (self != nil) {
        _name = stat.name;
    }
    return self;
}

@end
