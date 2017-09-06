//
//  FxAppSetting.h
//  NewsReader
//
//  Created by ZhuKang on 2017/9/6.
//  Copyright © 2017年 zhukang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FxAppSetting : NSObject


+ (NSString *)getValue:(NSString *)key;
+ (void)setValue:(id)value forKey:(NSString *)key;

@end
