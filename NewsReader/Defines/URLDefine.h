//
//  URLDefine.h
//  NewsReader
//
//  Created by zhukang on 17/9/3.
//  Copyright © 2017年 zhukang. All rights reserved.
//


#define ProductType 1

//
#ifdef OFFICIAL
#undef ProductType
#define ProductType 0
#endif

#if ProductType == 0
#define BaseHost    @""
#define BasePort    @""
#else
#define BaseHost    @"http://localhost"
#define BasePort    @":80"
#endif


#define BaseServer  BaseHost BasePort
#define BaseURLPath "/Json/"
#define BaseURL     BaseServer BaseURLPath

#define LoginURL    BaseURL "login.json"
#define AdvertURL   BaseURL "advert.json"
#define ColumnURL   BaseURL "column.json"
#define NewsURLFmt  BaseURL "news_%@.json"
#define DetailURLFmt BaseServer2 "%@/full.html"
#define ChartURL    BaseURL "chart.json"
#define H5URL       BaseURL "H5/content.html"