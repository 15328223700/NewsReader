//
//  FxBaseController.m
//  NewsReader
//
//  Created by zhukang on 17/9/4.
//  Copyright © 2017年 zhukang. All rights reserved.
//

#import "FxBaseController.h"
#import "FxActivityIndicator.h"

@implementation FxBaseController


- (FxActivity *)showActivityInView:(UIView *)view
{
    FxActivity *activity = [[FxActivityIndicator alloc] initWithView:view];
    CGRect frame = view.bounds;
    
    activity.frame = frame;
    [view addSubview:activity];
    
    return  activity;
}

- (void)showIndicator:(NSString *)tipMessage
             autoHide:(BOOL)hide
           afterDelay:(BOOL)delay
{
    if(_activity == nil)
        _activity = [self showActivityInView:self.view];
    
    if(tipMessage != nil)
    {
        _activity.labelText = tipMessage;
    [_activity show:NO];
    }
    
    if (hide && _activity.alpha>=1.0) {
        if (delay)
            [_activity hide:YES afterDelay:AnimationSecond];
        else
            [_activity hide:YES];
    }
}

- (void)hideIndicator
{
    [_activity hide:YES];
}

@end
