//
//  FxActivity.h
//  NewsReader
//
//  Created by zhukang on 17/9/5.
//  Copyright © 2017年 zhukang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FxActivity : UIView

@property(copy) NSString *labelText;
@property(copy) NSString *detailsLabelText;

-(id)initWithView:(UIView *)view;
- (void)show:(BOOL)animated;
- (void)hide:(BOOL)animated;
- (void)hide:(BOOL)animated afterDelay:(NSTimeInterval)delay;

@end
