
//
//  LoginPage.m
//  NewsReader
//
//  Created by zhukang on 17/9/4.
//  Copyright © 2017年 zhukang. All rights reserved.
//

#import "LoginPage.h"
#import "FxLogin.h"
#import "UserInfo.h"

@implementation LoginPage

-(IBAction)doLogin:(id)sender
{
    NSDictionary *opInfo = @{@"url": LoginURL , @"data":@""};
    _operation = [[FxLogin alloc] initWithDelegate:self opInfo:opInfo];
    
    [_operation executeOp];
}

-(BOOL)checkValidate
{
    BOOL valatile = YES;
    if(_userName.text.length <= 0
       || _passWord.text.length <=0)
    {
        valatile = NO;
        [self showIndicator:LoginCheckTip
                   autoHide:YES
                 afterDelay:YES];
    }
    
    return  valatile;
}

-(void)opSuccess:(UserInfo *)data
{
    if(![self checkValidate])
        return;
    
    [super opSuccess:data];
}

@end
