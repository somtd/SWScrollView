//
//  SWScrollView.m
//  SWScrollView
//
//  Created by SOMTD on 2013/06/13.
//  Copyright (c) 2013年 SOMTD. All rights reserved.
//

#import "SWScrollView.h"

@implementation SWScrollView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (BOOL)canBecomeFirstResponder {
    return NO;
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
