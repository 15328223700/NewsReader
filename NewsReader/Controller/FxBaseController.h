//
//  FxBaseController.h
//  NewsReader
//
//  Created by zhukang on 17/9/4.
//  Copyright © 2017年 zhukang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FxOperation.h"
#import "FxActivity.h"

@interface FxBaseController : UIViewController<FxOperationDelegate>
{
    FxOperation *_operation;
    FxActivity  *_activity;
}

- (void)showIndicator:(NSString *)tipMessage
             autoHide:(BOOL)hide
           afterDelay:(BOOL)delay;
- (void)hideIndicator;
@end
