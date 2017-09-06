//
//  FxGlobal.h
//  NewsReader
//
//  Created by zhukang on 17/9/6.
//  Copyright © 2017年 zhukang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FxGlobal : NSObject


// 缓存路径
+ (NSString *)getRootPath;
+ (NSString *)getCacheImage:(NSString *)fileName;


@end
