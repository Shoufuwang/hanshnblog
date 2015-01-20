//
//  AppDelegate.h
//  hanshinBlog
//
//  Created by wang on 2015/1/7.
//  Copyright (c) 2015年 wang. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ViewController;
@class SWRevealViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) ViewController *viewController;
@property (strong, nonatomic) SWRevealViewController *viewControllerRear;
@end

