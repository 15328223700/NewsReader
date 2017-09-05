//
//  FxLogin.m
//  NewsReader
//
//  Created by zhukang on 17/9/4.
//  Copyright © 2017年 zhukang. All rights reserved.
//

#import "FxLogin.h"
#import "UserInfo.h"

@implementation FxLogin



- (void)parseSuccess:(NSDictionary *)dict jsonString:jsonString
{
    NSDictionary *dictData = [dict objectForKey:NetData];
    UserInfo *info = [UserInfo infoFromDict:dictData];
    
    [_delegate opSuccess:info];
}


@end
