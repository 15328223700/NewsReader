//
//  ViewController.m
//  NewsReader
//
//  Created by zhukang on 17/9/2.
//  Copyright © 2017年 zhukang. All rights reserved.
//

#import "HomePage.h"
#import "FxGetAdvert.h"

@implementation HomePage

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self testOp];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}


-(void)testOp
{
    NSString *url = AdvertURL;
    NSDictionary *dictInfo = @{@"url":url, @"data":@""};
    
    _operation = [[FxGetAdvert alloc] initWithDelegate:self opInfo:dictInfo];
    [_operation executeOp];
}

- (void)opSuccess:(id)data
{
    BASE_INFO_FUN(@"成功");
}
- (void)opFail:(NSString *)errorMessage
{
    BASE_INFO_FUN(@"失败");
}

@end
