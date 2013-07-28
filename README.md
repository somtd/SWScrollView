SWScrollView
============
Scroll view like Star Wars opening crawl.

![sample0](http://f.cl.ly/items/393R2b2I0a1D2K1g3l36/SWScroll0.png)
　![sample1](http://f.cl.ly/items/3p2S0z203w0x0k2A3Y3a/SWScroll1.png) 
　![sample2](http://f.cl.ly/items/1j1d1f2W3B0e041p2n2A/SWScroll2.png) 


<img src="http://25.media.tumblr.com/84f59de6f9e5a97d0bdb154585d8813f/tumblr_mqdk19HCh41qgwcbqo1_400.gif" alt="SWScrollView" title="SWScrollView" style="display:block; margin: 10px auto 30px auto; align:center">

##Requirements

 iOS5.1 or later

##Installing
By using CocoaPods

```
pod 'SWScrollView', '~> 0.0.1'
```

##Usage

Import header

```objectivec
#import "SWScrollView.h"
```

Instantiate SWScrollView along with start point and add view on any other view that you want.

```objectivec
CGPoint scrollStartPoint = CGPointMake(0, -600);
SWScrollView *scrollView = [SWScrollView scrollViewWithStartPoint:scrollStartPoint];
[self.view addSubview:scrollView];
```

If you want start animating automatically, call following method.

```objectivec
[scrollView startAnimationWithDuration:12.f completion:^(BOOL finished) {
        // Write what you to do when finished this animation.
}];
```

##Customize

###Crawling message
Of course You can change crawling message in `SWScrollView.xib`.


###Perspective of scroll view
If you want to change perspective of scroll view. Edit `-(void)setupScrollPerspective` method in `SWScrollView.m`.

```objectivec
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
```


