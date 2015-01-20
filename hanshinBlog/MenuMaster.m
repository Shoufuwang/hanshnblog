//
//  MenuMaster.m
//  hanshinBlog
//
//  Created by wang on 2015/1/7.
//  Copyright (c) 2015年 wang. All rights reserved.
//

#import "MenuMaster.h"
#import "SWRevealViewController.h"
#import "RearViewController.h"
@interface MenuMaster ()<SWRevealViewControllerDelegate>

- (IBAction)pushExample:(id)sender;




@end

@implementation MenuMaster

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    RearViewController *rearViewController = [[RearViewController alloc] init];
    
   
    
    
    UINavigationController *rearNavigationController = [[UINavigationController alloc] initWithRootViewController:rearViewController];
    
    
    UINavigationController *fronNavigationController = [[UINavigationController alloc] initWithRootViewController:MenuMaster];
    // RearViewController *rearViewController =  [[ RearViewController alloc] init];
    // [rearViewController.view addSubview:self.view];
    	SWRevealViewController *revealController = [[SWRevealViewController alloc] initWithRearViewController:rearNavigationController frontViewController:fronNavigationController];


      
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)pushExample:(id)sender {
}
@end
