//
//  Stat.h
//  StatHat
//
//  Created by Evan Coleman on 10/26/14.
//  Copyright (c) 2014 Evan Coleman. All rights reserved.
//

#import <Mantle/Mantle.h>

@interface Stat : MTLModel <MTLJSONSerializing>

@property (nonatomic) NSString *name;
@property (nonatomic, getter=isCounter) BOOL counter;
@property (nonatomic) NSString *statId;

@end
