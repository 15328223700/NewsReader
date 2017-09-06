//
//  FxGetImage.m
//  NewsReader
//
//  Created by zhukang on 17/9/6.
//  Copyright © 2017年 zhukang. All rights reserved.
//

#import "FxGetImage.h"

@implementation FxGetImage

- (void)parseData:(NSData *)data
{
    [_delegate opSuccessEx:data opinfo:_opInfo];
}

@end
