//
//  FxAppSetting.m
//  NewsReader
//
//  Created by ZhuKang on 2017/9/6.
//  Copyright © 2017年 zhukang. All rights reserved.
//

#import "FxAppSetting.h"

@implementation FxAppSetting

+ (NSString *)getValue:(NSString *)key
{
    NSUserDefaults *userDef = [NSUserDefaults standardUserDefaults];
    
    return [userDef objectForKey:key];
}

+ (void)setValue:(id)value forKey:(NSString *)key
{
    NSUserDefaults *userDef = [NSUserDefaults standardUserDefaults];
    
    [userDef setObject:value forKey:key];
    [userDef synchronize];
}

@end
