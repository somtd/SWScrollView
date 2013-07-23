//
//  SWScrollView.h
//  SWScrollView
//
//  Created by SOMTD on 2013/06/13.
//  Copyright (c) 2013年 SOMTD. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface SWScrollView : UIView
+ (id)scrollViewWithStartPoint:(CGPoint)startPoint;
- (void)startAnimationWithDuration:(NSTimeInterval)duration
                        completion:(void (^)(BOOL finished))completion;
@end
