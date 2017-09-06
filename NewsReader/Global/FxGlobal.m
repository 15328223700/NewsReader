//
//  FxGlobal.m
//  NewsReader
//
//  Created by zhukang on 17/9/6.
//  Copyright © 2017年 zhukang. All rights reserved.
//

#import "FxGlobal.h"

@implementation FxGlobal


- (id)init
{
    self = [super init];
    if (self) {
        //self.push = [[MiPush alloc] init];
    }
    
    return self;
}


#pragma mark - 缓存路径

+ (NSString *)getRootPath
{
    NSString *path = [NSHomeDirectory() stringByAppendingPathComponent:RootPath];
    [FxFileUtility createPath:path];
    
    return path;
}

+ (NSString *)getCacheImage:(NSString *)fileName
{
    NSString *path = [NSString stringWithFormat:@"%@/%@", [FxGlobal getRootPath], CacheImagePath];
    
    [FxFileUtility createPath:path];
    path = [NSString stringWithFormat:@"%@/%@.jpg", path, fileName];
    
    return path;
}
@end
