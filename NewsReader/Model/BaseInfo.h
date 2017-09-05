//
//  BaseInfo.h
//  NewsReader
//
//  Created by zhukang on 17/9/3.
//  Copyright © 2017年 zhukang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BaseInfo : NSObject

@property(nonatomic, strong) NSString *ID;
@property(nonatomic,strong) NSString *name;

+(instancetype)infoFromDict:(NSDictionary *)dict;
+(NSArray *)arrayFromDict:(NSDictionary *)dict;
+(NSArray *)arrayFromArray:(NSArray *)array;

@end
