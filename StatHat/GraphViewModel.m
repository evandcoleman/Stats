//
//  GraphViewModel.m
//  StatHat
//
//  Created by Evan Coleman on 10/26/14.
//  Copyright (c) 2014 Evan Coleman. All rights reserved.
//

#import "GraphViewModel.h"

#import "Graph.h"
#import "Stat.h"
#import "DataPoint.h"

#import "APIClient.h"

@interface GraphViewModel ()

@property (nonatomic) Graph *graph;

@property (nonatomic) NSArray *values;

@end

@implementation GraphViewModel

- (instancetype)initWithAPIClient:(APIClient *)client stat:(Stat *)stat {
    self = [super init];
    if (self != nil) {
        RAC(self, graph) = [client readDataPoints:stat];
        
        RAC(self, title) = RACObserve(self, graph.statName);
        
        RAC(self, values) =
            [RACObserve(self, graph.dataPoints)
                map:^NSArray *(NSArray *points) {
                    return [[points.rac_sequence
                                map:^NSNumber *(DataPoint *point) {
                                    return point.value;
                                }]
                                array];
                }];
    }
    return self;
}

@end
