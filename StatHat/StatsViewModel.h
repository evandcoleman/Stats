//
//  StatsViewModel.h
//  StatHat
//
//  Created by Evan Coleman on 10/26/14.
//  Copyright (c) 2014 Evan Coleman. All rights reserved.
//

#import <Foundation/Foundation.h>

@class APIClient;

@interface StatsViewModel : NSObject

@property (nonatomic, readonly) NSArray *viewModels;

- (instancetype)initWithAPIClient:(APIClient *)client;

@end
