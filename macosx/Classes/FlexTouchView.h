/**
 * Copyright (c) 2017-present, zhenglibao, Inc.
 * email: 798393829@qq.com
 * All rights reserved.
 *
 * This source code is licensed under the MIT-style license found in the
 * LICENSE file in the root directory of this source tree.
 */


#import <AppKit/AppKit.h>
#import "UIView.h"

typedef void(^OnTouchEvent)(BOOL bPressed);

@interface FlexTouchView : UIView

@property(nonatomic,copy) OnTouchEvent onTouch;

@end
