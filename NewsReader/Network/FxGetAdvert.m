//
//  FxGetAdvert.m
//  NewsReader
//
//  Created by zhukang on 17/9/3.
//  Copyright © 2017年 zhukang. All rights reserved.
//

#import "FxGetAdvert.h"
#import "AdvertInfo.h"

@implementation FxGetAdvert

- (void)parseSuccess:(NSDictionary *)dict jsonString:jsonString
{
    NSDictionary *dictData = [dict objectForKey:NetData];
    AdvertInfo *advert = [AdvertInfo infoFromDict:dictData];
    
    [_delegate opSuccess:advert];
}


@end
