//
//  Stat.m
//  StatHat
//
//  Created by Evan Coleman on 10/26/14.
//  Copyright (c) 2014 Evan Coleman. All rights reserved.
//

#import "Stat.h"

@implementation Stat

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"statId": @"id",
             @"name": @"name",
             @"counter": @"counter",
             };
}

@end
