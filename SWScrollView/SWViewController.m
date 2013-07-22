//
//  SWViewController.m
//  SWScrollView
//
//  Created by SOMTD on 2013/06/12.
//  Copyright (c) 2013年 SOMTD. All rights reserved.
//

#import "SWViewController.h"
#import <QuartzCore/QuartzCore.h>
#import "SWBaseView.h"

@interface SWViewController ()
//@property (nonatomic, strong) IBOutlet SWScrollView *textView;
@end

@implementation SWViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    SWBaseView *baseView = [SWBaseView baseView];
    //SWBaseView *baseView = [[SWBaseView alloc]initWithFrame:self.view.frame];
    
    [self.view addSubview:baseView];
//    CATransform3D transform = CATransform3DIdentity;
//    //z distance
//    float distance = [[UIScreen mainScreen] bounds].size.height;
//    float ratio    = [[UIScreen mainScreen] bounds].size.height/[[UIScreen mainScreen] bounds].size.height;
//    transform.m34 = - ratio / distance;;
//    transform = CATransform3DRotate(transform, 60.0f * M_PI / 180.0f, 1.f, 0.0f, 0.0f);
//    _textView.layer.transform = transform;
//    _textView.layer.zPosition = distance * ratio;
//    _textView.layer.position = CGPointMake(
//                                           [[UIScreen mainScreen] bounds].size.width/2,
//                                           [[UIScreen mainScreen] bounds].size.height/3);
//    _textView.contentOffset = CGPointMake(0, -640);
    
//    CGRect animationRect = CGRectMake(0, 0, 320, 570);
//    [UIView animateWithDuration:12
//                          delay:0
//                        options:UIViewAnimationOptionCurveEaseInOut
//                     animations:^{ [scrollView scrollRectToVisible:animationRect animated:NO]; }
//                     completion:NULL];

	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -- UITextViewDelegate

@end
