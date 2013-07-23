//
//  SampleViewController.m
//  SWScrollView
//
//  Created by SOMTD on 2013/07/23.
//  Copyright (c) 2013年 SOMTD. All rights reserved.
//

#import "SampleViewController.h"
#import "SWScrollView.h"

@interface SampleViewController ()

@end

@implementation SampleViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    UIImageView *backgroundView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"background.png"]];
    [self.view addSubview:backgroundView];
    
    CGPoint scrollStartPoint = CGPointMake(0, -600);
    SWScrollView *scrollView = [SWScrollView scrollViewWithStartPoint:scrollStartPoint];
    [self.view addSubview:scrollView];
    
    [scrollView startAnimationWithDuration:12.f completion:^(BOOL finished) {
        // 
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
