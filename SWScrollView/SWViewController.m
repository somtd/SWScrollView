//
//  SWViewController.m
//  SWScrollView
//
//  Created by SOMTD on 2013/06/12.
//  Copyright (c) 2013年 SOMTD. All rights reserved.
//

#import "SWViewController.h"
#import <QuartzCore/QuartzCore.h>
#import "SWScrollView.h"

@interface SWViewController ()
@property (nonatomic, strong) IBOutlet SWScrollView *textView;
@end

@implementation SWViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    CATransform3D transform = CATransform3DIdentity;
    transform.m34 = 1.0f / -500.0f;
    transform = CATransform3DRotate(transform, 60.0f * M_PI / 180.0f, 1.0f, 0.0f, 0.0f);
    
    _textView.layer.transform = transform;
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -- UITextViewDelegate

@end
