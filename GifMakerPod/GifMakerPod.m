//  weibo: http://weibo.com/xiaoqing28
//  blog:  http://www.alonemonkey.com
//
//  GifMakerPod.m
//  GifMakerPod
//
//  Created by Sylar on 2018/6/30.
//  Copyright (c) 2018年 Sylar. All rights reserved.
//

#import "GifMakerPod.h"
#import <CaptainHook/CaptainHook.h>
#import <UIKit/UIKit.h>

CHDeclareClass(PayTool);
CHClassMethod0(BOOL, PayTool, didSuccessBuyPro){
    return YES;
}
CHClassMethod0(BOOL, PayTool, didSuccessUnlockFilter){
    return YES;
}
CHClassMethod0(BOOL, PayTool, didSuccessClearAD){
    return YES;
}
CHClassMethod0(BOOL, PayTool, didSuccessClearWaterMark){
    return YES;
}

CHConstructor{
    CHLoadLateClass(PayTool);
    CHHook0(PayTool, didSuccessBuyPro);
    CHHook0(PayTool, didSuccessUnlockFilter);
    CHHook0(PayTool, didSuccessClearAD);
    CHHook0(PayTool, didSuccessClearWaterMark);
}
