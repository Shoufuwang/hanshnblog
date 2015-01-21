//
//  RearViewController.h
//  hanshinBlog
//
//  Created by wang on 2015/1/11.
//  Copyright (c) 2015年 wang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SlideNavigationContorllerAnimator.h"
#import "SlideNavigationContorllerAnimatorFade.h"
#import "SlideNavigationContorllerAnimatorSlide.h"
#import "SlideNavigationContorllerAnimatorScale.h"
#import "SlideNavigationContorllerAnimatorScaleAndFade.h"
#import "SlideNavigationContorllerAnimatorSlideAndFade.h"

@interface RearViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITableView *table;


@end
