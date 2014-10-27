//
//  StatViewModel.m
//  StatHat
//
//  Created by Evan Coleman on 10/26/14.
//  Copyright (c) 2014 Evan Coleman. All rights reserved.
//

#import "StatViewModel.h"

#import "GraphViewModel.h"

#import "Stat.h"

@interface StatViewModel ()

@property (nonatomic, readonly) APIClient *apiClient;

@property (nonatomic, readonly) Stat *stat;

@end

@implementation StatViewModel

- (instancetype)initWithStat:(Stat *)stat apiClient:(APIClient *)client {
    self = [super init];
    if (self != nil) {
        _apiClient = client;
        _stat = stat;
        
        _name = stat.name;
    }
    return self;
}

- (GraphViewModel *)graphViewModel {
    return [[GraphViewModel alloc] initWithAPIClient:self.apiClient stat:self.stat];
}

@end
