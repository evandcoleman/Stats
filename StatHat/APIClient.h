//
//  APIClient.h
//  StatHat
//
//  Created by Evan Coleman on 10/26/14.
//  Copyright (c) 2014 Evan Coleman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Overcoat/OVCHTTPSessionManager.h>

@interface APIClient : OVCHTTPSessionManager

- (RACSignal *)readStats;

@end