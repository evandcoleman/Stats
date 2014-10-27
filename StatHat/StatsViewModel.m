//
//  StatsViewModel.m
//  StatHat
//
//  Created by Evan Coleman on 10/26/14.
//  Copyright (c) 2014 Evan Coleman. All rights reserved.
//

#import "StatsViewModel.h"

#import "StatViewModel.h"

#import "Stat.h"

#import "APIClient.h"

@interface StatsViewModel ()

@end

@implementation StatsViewModel

- (instancetype)initWithAPIClient:(APIClient *)client {
    self = [super init];
    if (self != nil) {
        RAC(self, viewModels) =
            [[client readStats]
                map:^NSArray *(NSArray *stats) {
                    return [[stats.rac_sequence
                                map:^StatViewModel *(Stat *stat) {
                                    return [[StatViewModel alloc] initWithStat:stat];
                                }]
                                array];
                }];
    }
    return self;
}

@end
