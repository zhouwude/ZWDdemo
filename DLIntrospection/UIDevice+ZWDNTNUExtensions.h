//
//  UIDevice+ZWDNTNUExtensions.h
//  ZWDdemo
//
//  Created by 周武德 on 15/8/7.
//  Copyright (c) 2015年 周武德. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef NS_ENUM(NSUInteger, NTNUDeviceType) {
    DeviceAppleUnknown,
    DeviceAppleSimulator,
    DeviceAppleiPhone,
    DeviceAppleiPhone3G,
    DeviceAppleiPhone3GS,
    DeviceAppleiPhone4,
    DeviceAppleiPhone4S,
    DeviceAppleiPhone5,
    DeviceAppleiPhone5C,
    DeviceAppleiPhone5S,
    DeviceAppleiPhone6,
    DeviceAppleiPhone6_Plus,
    DeviceAppleiPodTouch,
    DeviceAppleiPodTouch2G,
    DeviceAppleiPodTouch3G,
    DeviceAppleiPodTouch4G,
    DeviceAppleiPad,
    DeviceAppleiPad2,
    DeviceAppleiPad3G,
    DeviceAppleiPad4G,
    DeviceAppleiPad5G_Air,
    DeviceAppleiPadMini,
    DeviceAppleiPadMini2G
};

@interface UIDevice (ZWDNTNUExtensions)
- (NSString *)ntnu_deviceDescription;
- (NTNUDeviceType)ntnu_deviceType;

@end
