//
//  Contant.h
//  GuestAdvertisement
//
//  Created by kris on 14-5-26.
//  Copyright (c) 2014年 kris. All rights reserved.
//

#import "BaseViewController.h"
#import "AppDelegate.h"
#import "BaseService.h"

#define NavColor kUIColorFromRGB(0x754681)
#define MainColor kUIColorFromRGB(0x573E7D)
#define TabViewColor kUIColorFromRGB(0x3D2E62)

/***********************************************************************************************
* public
***********************************************************************************************/
#define SERVER_ORIGIN_HOST @"http://115.29.204.64:9009/" //aliyun
#define IMG_HOST [PublicMethod getImgHost]

#define IOS7_OR_LATER   ( [[[UIDevice currentDevice] systemVersion] compare:@"7.0"] != NSOrderedAscending )
#define ISIPhone4 (ScreenHeight<500)
//device
#define ScreenHeight [[UIScreen mainScreen] bounds].size.height
#define ScreenWidth [[UIScreen mainScreen] bounds].size.width
#define ScreenCenter CGhalfPointMake(ScreenWidth,ScreenHeight)
#define ScreenCenterWithNavi CGhalfPointMake(ScreenWidth,(ScreenHeight-NavigationHeight))
#define StateBarHeight 20
#define NavigationHeight 44
#define KeyWindow [[UIApplication sharedApplication] keyWindow]

#define DeviceID  [[[UIDevice currentDevice] identifierForVendor] UUIDString]

#define MainWidth ScreenWidth
#define MainHeight (ScreenHeight - StateBarHeight)
#define AppDelegateShared (AppDelegate*)[[UIApplication sharedApplication] delegate]
//color
#define KUIColorFromR(rValue) ((float)((rValue & 0xFF0000) >> 16))/255.0
#define KUIColorFromG(gValue) ((float)((gValue & 0xFF00) >> 16))/255.0
#define KUIColorFromB(bValue) ((float)((bValue & 0xFF) >> 16))/255.0
#define kUIColorFromRGB(rgbValue) [UIColor \
colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 \
green:((float)((rgbValue & 0xFF00) >> 8))/255.0 \
blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]


/**
 CG<#VALUE#>Make With Fit iphone 5
 */
//size
#define CGSizeMakeFit(x,y,offsetx,offsety) ISIPhone4 ? CGSizeMake(x, y) : CGSizeMake(x + offsetx, y + offsety);
//point
#define CGPointMakeFit(x,y,offsetx,offsety) ISIPhone4 ? CGPointMake(x, y) : CGPointMake(x + offsetx, y + offsety);
#define CGViewCenterFit(view,x,y) CGPointMake(view.frame.size.width/2+x, view.frame.size.height/2+y)
//float
#define CGFloatMakeFit(x,offsetx) (ISIPhone4 ? x : (x + offsetx))




/**
 CG<#VALUE#>Make With Offset
 */
//rect
#define CGRectMakeOffset(rect,ox,oy,owidth,oheight)    CGRectMake(rect.origin.x + ox, rect.origin.y + oy, rect.size.width + owidth, rect.size.height + oheight)
#define CGRectMakeOffsetX(rect,ox)    (CGRect)CGRectMake(rect.origin.x + ox, rect.origin.y, rect.size.width, rect.size.height)
#define CGRectMakeOffsetY(rect,oy)    (CGRect)CGRectMake(rect.origin.x, rect.origin.y + oy, rect.size.width, rect.size.height)
#define CGRectMakeOffsetW(rect,ow)    (CGRect)CGRectMake(rect.origin.x, rect.origin.y, rect.size.width + ow, rect.size.height)
#define CGRectMakeOffsetH(rect,oh)    (CGRect)CGRectMake(rect.origin.x, rect.origin.y, rect.size.width, rect.size.height + oh)
//point
#define CGPointMakeOffset(point,ox,oy) CGPointMake(point.x + ox, point.y + oy)
#define CGPointMakeOffsetP(point,pointO) CGPointMake(point.x + pointO.x, point.y + pointO.y)

#define CGPointMakeOffsetX(point,ox) CGPointMake(point.x + ox, point.y)
#define CGPointMakeOffsetY(point,oy) CGPointMake(point.x, point.y + oy)



/**
 CG<#VALUE#>Make  with half
 */
#define CGhalfPointMakeP(point) CGPointMake(point.x/2, point.y/2)
#define CGhalfPointMake(x,y) CGPointMake(x/2, y/2)
#define CGhalfSizeMake(x,y) CGSizeMake(x/2, y/2)
#define CGhalfSize(size) CGSizeMake(size.width/2, size.height/2)

//view center
#define CGCenterView(view) CGPointMake(view.frame.size.width/2, view.frame.size.height/2)

/**
 CG<#VALUE#>Make  with scale
 */
#define CGSizeMakeWithScale(size,scale) CGSizeMake(size.width * scale , size.height * scale)



/**
 CG<#VALUE#> to pointer
 */
#define CGPointMakeV(x,y) [NSValue valueWithCGPoint:CGPointMake(x, y)]

