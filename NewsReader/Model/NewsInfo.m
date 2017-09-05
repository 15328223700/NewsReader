//
//  NewsInfo.m
//  NewsReader
//
//  Created by zhukang on 17/9/3.
//  Copyright © 2017年 zhukang. All rights reserved.
//

#import "NewsInfo.h"

@implementation NewsInfo



+ (instancetype)infoFromDict:(NSDictionary *)dict
{
    NewsInfo *info = [[NewsInfo alloc] init];
    
    info.ID = [dict objectForKey:@"id"];
    info.name = [dict objectForKey:@"name"];
    info.iconUrl = [dict objectForKey:@"iconurl"];
    info.contentUrl = [dict objectForKey:@"contenturl"];
    info.desc = [dict objectForKey:@"desc"];
    return info;
}
@end
