//
//  SWScrollView.m
//  SWScrollView
//
//  Created by SOMTD on 2013/06/13.
//  Copyright (c) 2013年 SOMTD. All rights reserved.
//

#import "SWScrollView.h"
#import <QuartzCore/QuartzCore.h>

@interface SWTextView : UITextView

@end

@implementation SWTextView

- (BOOL)canBecomeFirstResponder {
    return NO;
}
@end

@interface SWScrollView ()
@property (weak, nonatomic) IBOutlet SWTextView *textView;

@end

@implementation SWScrollView

- (void)_init
{
    // initialize
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self)
    {
        [self _init];
    }
    return self;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        [self _init];
    }
    return self;
}

- (void)awakeFromNib
{
    [super awakeFromNib];
    [self setupScrollPerspective];
}

- (void)setupScrollPerspective
{
    CATransform3D transform = CATransform3DIdentity;
    //z distance
    float distance = [[UIScreen mainScreen] bounds].size.height;
    float ratio    = [[UIScreen mainScreen] bounds].size.height/[[UIScreen mainScreen] bounds].size.height;
    transform.m34 = - ratio / distance;
    transform = CATransform3DRotate(transform, 60.0f * M_PI / 180.0f, 1.f, 0.0f, 0.0f);
    self.layer.transform = transform;
    self.layer.zPosition = distance * ratio;
    self.layer.position = CGPointMake([[UIScreen mainScreen] bounds].size.width/2,
                                      [[UIScreen mainScreen] bounds].size.height/3);
}

+ (id)scrollViewWithStartPoint:(CGPoint)startPoint
{
    // nib ファイルから読み込む
    UINib *nib = [UINib nibWithNibName:@"SWScrollView" bundle:nil];
    SWScrollView *view = [[nib instantiateWithOwner:self options:nil] objectAtIndex:0];
    [view.textView setContentOffset:startPoint];
    return view;
}

- (void)startAnimationWithDuration:(NSTimeInterval)duration
                        completion:(void (^)(BOOL finished))completion
{
    CGFloat animationWidth  = [[UIScreen mainScreen] bounds].size.width;
    CGFloat animationHeight = [[UIScreen mainScreen] bounds].size.height + 120;
    CGRect animationRect = CGRectMake(0, 0, animationWidth, animationHeight);
    [UIView animateWithDuration:duration
                          delay:0
                        options:UIViewAnimationOptionCurveLinear
                     animations:^{ [_textView scrollRectToVisible:animationRect animated:NO]; }
                     completion:^(BOOL finished) {
                         completion(finished);
                     }];
    
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
