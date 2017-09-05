//
//  ViewController.h
//  NewsReader
//
//  Created by zhukang on 17/9/2.
//  Copyright © 2017年 zhukang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FxOperation.h"

@interface HomePage : UITabBarController<FxOperationDelegate>

{
    FxOperation *_operation;
}
@end

