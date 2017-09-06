//
//  AdvertPage.m
//  NewsReader
//
//  Created by ZhuKang on 2017/9/6.
//  Copyright © 2017年 zhukang. All rights reserved.
//

#import "AdvertPage.h"
#import "FxAppSetting.h"
#import "FxDate.h"
#import "AppDelegate.h"
#import "FxGetImage.h"

@interface AdvertPage ()

@end

@implementation AdvertPage

+(BOOL)canShowAdvertPage
{
    NSString *dateString = [FxAppSetting getValue:AdvertKey];
    NSDate *date = [FxDate dateFromStringYMDHMS:dateString];
    NSTimeInterval interval = [[NSDate date] timeIntervalSinceDate:date];
    
    if(interval < AdvertCheckTime)
    {
        return  NO;
    }
    
    return  YES;
}

+(void)showAdvertPage
{
    [FxAppSetting setValue:[FxDate stringFromDateYMDHMS:[NSDate date]] forKey:AdvertKey];
    
    AdvertPage *controller = [[AdvertPage alloc] init];
    UIWindow *window = [AppDelegate appDeg].window;
    
    if(window.rootViewController != nil)
    {
        CGRect frame = window.rootViewController.view.bounds;
        controller.view.frame = frame;
        [window.rootViewController.view addSubview:controller.view];
    }
    else
    {
        window.rootViewController = controller;
        [window makeKeyAndVisible];
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self getAdvertImage];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


-(void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    [[UIApplication sharedApplication] setStatusBarHidden:NO];
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    [[UIApplication sharedApplication] setStatusBarHidden:YES];
}

- (void)getAdvertOp
{
    CGSize size = [UIScreen mainScreen].bounds.size;
    NSString *url = [NSString stringWithFormat:AdvertURL, (long)size.width, (long)size.height];
    NSDictionary *dictInfo = @{@"url":url};
    
    _operation = [[FxOperation alloc] initWithDelegate:self opInfo:dictInfo];
    [_operation executeOp];
}


- (void)getLaunchImageOp:(NSString *)url
{
    NSDictionary *dictInfo = @{@"url":url};
    
    _operation = [[FxGetImage alloc] initWithDelegate:self opInfo:dictInfo];
    [_operation executeOp];
}

-(void)getAdvertImage
{
    if(![self checkLanchExist])
        return;
    
    [self getAdvertOp];
}

-(BOOL)checkLanchExist
{
    NSString *fileName = [FxDate stringFromDateYMD:[NSDate date]];
    NSString *filePath = [FxGlobal getCacheImage:fileName];
    
    if([FxFileUtility isFileExist:filePath])
    {
        _imageView.image = [UIImage imageWithContentsOfFile:filePath];
        [self delayHideAdvert];
        return  YES;
    }
    
    return NO;
}

- (void)delayHideAdvert
{
    [self performSelector:@selector(hideLanch) withObject:nil afterDelay:AdvertDelayTime];
}

- (void)hideLanch
{
    if(self.view.superview != [AppDelegate appDeg].window)
    {
        [self.view removeFromSuperview];
    }
    else
        [[AppDelegate appDeg] showHomePage];
}

#pragma mark - FxOperationDelegate methods
- (void)opSuccess:(NSDictionary *)dict
{
    NSDictionary *dictData = [dict objectForKey:NetData];
    NSString *url = [dictData objectForKey:@"imageurl"];
    
    [self getLaunchImageOp:url];
}

- (void)opSuccessEx:(id)data opinfo:(NSDictionary *)dictInfo
{
    [self setLaucnImage:data];
    [self delayHideAdvert];
}

- (void)setLaucnImage:(NSData *)data
{
    NSString *fileName = [FxDate stringFromDateYMD:[NSDate date]];
    UIImage *image = [UIImage imageWithData:data];
    
    if(image != nil)
    {
        _imageView.image = image;
        [data writeToFile:[FxGlobal getCacheImage:fileName] atomically:YES];
    }
}

@end
