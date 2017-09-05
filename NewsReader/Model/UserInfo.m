//
//  UserModel.m
//  NewsReader
//
//  Created by zhukang on 17/9/4.
//  Copyright © 2017年 zhukang. All rights reserved.
//

#import "UserInfo.h"

@implementation UserInfo

+(instancetype)infoFromDict:(NSDictionary *)dict
{
    UserInfo *info = [[UserInfo alloc] init];
    info.ID = [dict objectForKey:@"id"];
    info.name = [dict objectForKey:@"name"];
    info.token = [dict objectForKey:@"token"];
    return info;
}

@end
