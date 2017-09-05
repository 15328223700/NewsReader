//
//  BaseInfo.m
//  NewsReader
//
//  Created by zhukang on 17/9/3.
//  Copyright © 2017年 zhukang. All rights reserved.
//

#import "BaseInfo.h"

@implementation BaseInfo


+ (instancetype)infoFromDict:(NSDictionary *)dict
{
    BaseInfo *info = [[BaseInfo alloc] init];
    info.ID = [dict objectForKey:@"id"];
    info.name = [dict objectForKey:@"name"];
    return info;
}

+(NSArray *)arrayFromDict:(NSDictionary *)dict
{
    NSArray *array = [dict objectForKey:NetData];
    return [[self class] arrayFromArray:array];
}

+(NSArray *)arrayFromArray:(NSArray *)array
{
    NSMutableArray *infos = [[NSMutableArray alloc] init];
    
    for (NSDictionary *dict in array){
        [infos addObject:[[self class] infoFromDict:dict]];
    }
    
    if(infos.count <= 0)
        infos = nil;
    
    return infos;
}
@end
