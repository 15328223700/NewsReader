//
//  NewsInfo.h
//  NewsReader
//
//  Created by zhukang on 17/9/3.
//  Copyright © 2017年 zhukang. All rights reserved.
//

#import "BaseInfo.h"

@interface NewsInfo : BaseInfo

@property(nonatomic, strong) NSString    *desc;
@property(nonatomic, strong) NSString    *iconUrl;
@property(nonatomic, strong) NSString    *contentUrl;

@end
