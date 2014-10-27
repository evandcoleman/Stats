//
//  Graph.h
//  StatHat
//
//  Created by Evan Coleman on 10/26/14.
//  Copyright (c) 2014 Evan Coleman. All rights reserved.
//

#import <Mantle/Mantle.h>

@class Stat;

@interface Graph : MTLModel <MTLJSONSerializing>

@property (nonatomic) NSString *statName;
@property (nonatomic) NSArray *dataPoints;

@end
