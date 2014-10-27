//
//  StatViewModel.h
//  StatHat
//
//  Created by Evan Coleman on 10/26/14.
//  Copyright (c) 2014 Evan Coleman. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Stat;

@interface StatViewModel : NSObject

@property (nonatomic, readonly) NSString *name;

- (instancetype)initWithStat:(Stat *)stat;

@end
