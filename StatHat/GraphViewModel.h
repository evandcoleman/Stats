//
//  GraphViewModel.h
//  StatHat
//
//  Created by Evan Coleman on 10/26/14.
//  Copyright (c) 2014 Evan Coleman. All rights reserved.
//

#import <Foundation/Foundation.h>

@class APIClient;
@class Stat;

@interface GraphViewModel : NSObject

@property (nonatomic, readonly) NSString *title;
@property (nonatomic, readonly) NSArray *values;
@property (nonatomic, readonly) NSArray *times;

- (instancetype)initWithAPIClient:(APIClient *)client stat:(Stat *)stat;

@end
