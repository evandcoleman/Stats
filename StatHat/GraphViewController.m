//
//  DetailViewController.m
//  StatHat
//
//  Created by Evan Coleman on 10/26/14.
//  Copyright (c) 2014 Evan Coleman. All rights reserved.
//

#import "GraphViewController.h"

#import "GraphViewModel.h"

#import <GraphKit/GraphKit.h>

@interface GraphViewController () <GKLineGraphDataSource>

@property (nonatomic, weak) IBOutlet GKLineGraph *graphView;

@end

@implementation GraphViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.graphView.dataSource = self;
    self.graphView.lineWidth = 3.0;

    RAC(self, title) = RACObserve(self, viewModel.title);
    
    [[[RACSignal merge:@[[RACObserve(self, viewModel.values) ignore:nil], [RACObserve(self, viewModel.times) ignore:nil]]]
        mapReplace:self.graphView]
        subscribeNext:^(GKLineGraph *graphView) {
            [graphView draw];
        }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}

#pragma mark GKLineGraphDataSource

- (NSInteger)numberOfLines {
    return 1;
}

- (UIColor *)colorForLineAtIndex:(NSInteger)index {
    return [UIColor greenColor];
}

- (NSArray *)valuesForLineAtIndex:(NSInteger)index {
    return self.viewModel.values;
}

- (NSString *)titleForLineAtIndex:(NSInteger)index {
    return self.viewModel.title;
}

@end
