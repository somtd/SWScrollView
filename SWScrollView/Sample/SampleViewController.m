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
    
    SWScrollView *baseView = [SWScrollView scrollView];
    [self.view addSubview:baseView];
    
//    baseView.scrollView.contentOffset = CGPointMake(0, -640);
//    
//    CGRect animationRect = CGRectMake(0, 0, 320, 570);
//    [UIView animateWithDuration:12
//                          delay:0
//                        options:UIViewAnimationOptionCurveEaseInOut
//                     animations:^{ [baseView.scrollView scrollRectToVisible:animationRect animated:NO]; }
//                     completion:NULL];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
