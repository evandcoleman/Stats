//
//  APIClient.h
//  StatHat
//
//  Created by Evan Coleman on 10/26/14.
//  Copyright (c) 2014 Evan Coleman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Overcoat/OVCHTTPSessionManager.h>

@class Stat;

@interface APIClient : OVCHTTPSessionManager

- (RACSignal *)readStats;

- (RACSignal *)readDataPoints:(Stat *)stat;

@end