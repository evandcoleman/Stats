//
//  APIClient.m
//  StatHat
//
//  Created by Evan Coleman on 10/26/14.
//  Copyright (c) 2014 Evan Coleman. All rights reserved.
//

#import "APIClient.h"

#import "Stat.h"
#import "Graph.h"

#import <Overcoat/ReactiveCocoa+Overcoat.h>
#import <Overcoat/Overcoat.h>

@implementation APIClient

+ (NSDictionary *)modelClassesByResourcePath {
    return @{
             @"statlist": [Stat class],
             @"data/*": [Graph class],
             };
}

- (instancetype)init {
    self = [super initWithBaseURL:[NSURL URLWithString:@"https://www.stathat.com/x/ACCESS_TOKEN"]];
    if (self != nil) {

    }
    return self;
}

- (RACSignal *)readStats {
    NSLog(@"Fetching stats list...");
    return [[self rac_GET:@"statlist" parameters:nil]
            map:^NSArray *(OVCResponse *response) {
                return response.result;
            }];
}

- (RACSignal *)readDataPoints:(Stat *)stat {
    NSLog(@"Fetching data for stat: %@", stat.name);
    NSString *path = [NSString stringWithFormat:@"data/%@", stat.statId];
    return [[self rac_GET:path parameters:@{@"t": @"1d15m"}]
            map:^Graph *(OVCResponse *response) {
                return [response.result firstObject];
            }];
}

@end