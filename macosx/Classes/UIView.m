//
//  UIView.m
//  FlexViewer
//
//  Created by 郑立宝 on 2019/11/20.
//  Copyright © 2019 郑立宝. All rights reserved.
//

#import "UIView.h"
#import "FlexUtils.h"

@implementation UIView

- (BOOL)isFlipped
{
    return YES;
}

FLEXSETBOOL(hidden)


FLEXSET(borderWidth)
{
    self.wantsLayer = YES;
    CGFloat f = [sValue floatValue] ;
    self.layer.borderWidth = f ;
}

FLEXSET(borderColor)
{
    self.wantsLayer = YES;
    self.layer.borderColor = colorFromString(sValue,owner).CGColor ;
}

FLEXSET(borderRadius)
{
    self.wantsLayer = YES;
    CGFloat f = [sValue floatValue] ;
    self.layer.cornerRadius = f ;
}

FLEXSET(shadowOffset)
{
    self.wantsLayer = YES;
    NSArray* ary = [sValue componentsSeparatedByString:@"/"];
    if(ary.count==2){
        CGFloat f1 = [ary[0] floatValue] ;
        CGFloat f2 = [ary[1] floatValue] ;
        self.layer.shadowOffset = CGSizeMake(f1, f2) ;
    }
}

FLEXSET(shadowOpacity)
{
    self.wantsLayer = YES;
    CGFloat f = [sValue floatValue] ;
    self.layer.shadowOpacity = f ;
}

FLEXSET(shadowRadius)
{
    self.wantsLayer = YES;
    CGFloat f = [sValue floatValue] ;
    self.layer.shadowRadius = f ;
}

FLEXSET(shadowColor)
{
    self.wantsLayer = YES;
    self.layer.shadowColor = colorFromString(sValue,owner).CGColor ;
}

FLEXSET(bgColor)
{
    self.wantsLayer = YES;
    NSColor* clr = colorFromString(sValue,owner) ;
    if(clr!=nil){
        self.layer.backgroundColor = clr.CGColor ;
    }
}

@end
