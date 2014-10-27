//
//  DataPoint.h
//  StatHat
//
//  Created by Evan Coleman on 10/26/14.
//  Copyright (c) 2014 Evan Coleman. All rights reserved.
//

#import <Mantle/Mantle.h>

@interface DataPoint : MTLModel <MTLJSONSerializing>

@property (nonatomic) NSData *time;
@property (nonatomic) NSNumber *value;

@end
