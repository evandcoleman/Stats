//
//  DataPoint.m
//  StatHat
//
//  Created by Evan Coleman on 10/26/14.
//  Copyright (c) 2014 Evan Coleman. All rights reserved.
//

#import "DataPoint.h"

@implementation DataPoint

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"time": @"time",
             @"value": @"value",
             };
}

+ (NSValueTransformer *)JSONTransformerForKey:(NSString *)key {
    if ([key isEqualToString:@"time"]) {
        return [MTLValueTransformer transformerWithBlock:^NSDate *(NSNumber *value) {
            return [NSDate dateWithTimeIntervalSince1970:[value integerValue]];
        }];
    }
    return nil;
}

@end
