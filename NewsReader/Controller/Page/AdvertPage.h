//
//  AdvertPage.h
//  NewsReader
//
//  Created by ZhuKang on 2017/9/6.
//  Copyright © 2017年 zhukang. All rights reserved.
//

#import "FxBasePage.h"

@interface AdvertPage : FxBasePage
{
    IBOutlet UIImageView *_imageView;
}

+(BOOL)canShowAdvertPage;
+(void)showAdvertPage;

@end
