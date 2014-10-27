//
//  Graph.m
//  StatHat
//
//  Created by Evan Coleman on 10/26/14.
//  Copyright (c) 2014 Evan Coleman. All rights reserved.
//

#import "Graph.h"

#import "DataPoint.h"

@implementation Graph

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"statName": @"name",
             @"dataPoints": @"points",
             };
}

+ (NSValueTransformer *)JSONTransformerForKey:(NSString *)key {
    if ([key isEqualToString:@"dataPoints"]) {
        return [NSValueTransformer mtl_JSONArrayTransformerWithModelClass:[DataPoint class]];
    }
    return nil;
}

@end
