//
//  ViewController.m
//  hanshinBlog
//
//  Created by wang on 2015/1/7.
//  Copyright (c) 2015年 wang. All rights reserved.
//

#import "ViewController.h"
#import "MenuMaster.h"


@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *start;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)start:(id)sender {

    UIViewController *controller = [[UIViewController alloc] initWithNibName:@"MenuMaster" bundle:[NSBundle mainBundle]];
    //if you are using storyboards use this line
   
    
    //to present the controller modally use this
    [self presentViewController:controller animated:NO completion:nil];
    //or if you are pushing to this controller using a navigation controller use this
 //  [self.navigationController pushViewController:controller animated:NO];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
