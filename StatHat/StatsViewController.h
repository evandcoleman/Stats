//
//  MasterViewController.h
//  StatHat
//
//  Created by Evan Coleman on 10/26/14.
//  Copyright (c) 2014 Evan Coleman. All rights reserved.
//

#import <UIKit/UIKit.h>

@class StatsViewModel;

@interface StatsViewController : UITableViewController

@property (nonatomic) StatsViewModel *viewModel;

@end

