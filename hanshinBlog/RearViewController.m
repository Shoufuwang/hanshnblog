//
//  RearViewController.m
//  hanshinBlog
//
//  Created by wang on 2015/1/11.
//  Copyright (c) 2015年 wang. All rights reserved.
//

#import "RearViewController.h"

@interface RearViewController ()

@end

@implementation RearViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.table.separatorColor = [UIColor lightGrayColor];
    
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"rightMenu.jpg"]];
    self.table.backgroundView = imageView;

    
    
    
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.table.frame.size.width, 20)];
    view.backgroundColor = [UIColor clearColor];
    return view;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 20;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"rightMenuCell"];
    
    switch (indexPath.row)
    {
        case 0:
            cell.textLabel.text = @"None";
            break;
            
        case 1:
            cell.textLabel.text = @"Slide";
            break;
            
        case 2:
            cell.textLabel.text = @"Fade";
            break;
            
        case 3:
            cell.textLabel.text = @"Slide And Fade";
            break;
            
        case 4:
            cell.textLabel.text = @"Scale";
            break;
            
        case 5:
            cell.textLabel.text = @"Scale And Fade";
            break;
    }
    
    cell.backgroundColor = [UIColor clearColor];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    id <SlideNavigationContorllerAnimator> revealAnimator;
    
    switch (indexPath.row)
    {
        case 0:
            revealAnimator = nil;
            break;
            
        case 1:
            revealAnimator = [[SlideNavigationContorllerAnimatorSlide alloc] init];
            break;
            
        case 2:
            revealAnimator = [[SlideNavigationContorllerAnimatorFade alloc] init];
            break;
            
        case 3:
            revealAnimator = [[SlideNavigationContorllerAnimatorSlideAndFade alloc] initWithMaximumFadeAlpha:.8 fadeColor:[UIColor blackColor] andSlideMovement:100];
            break;
            
        case 4:
            revealAnimator = [[SlideNavigationContorllerAnimatorScale alloc] init];
            break;
            
        case 5:
            revealAnimator = [[SlideNavigationContorllerAnimatorScaleAndFade alloc] initWithMaximumFadeAlpha:.6 fadeColor:[UIColor blackColor] andMinimumScale:.8];
            break;
            
        default:
            return;
    }
    
    [[SlideNavigationController sharedInstance] closeMenuWithCompletion:^{
        [SlideNavigationController sharedInstance].menuRevealAnimator = revealAnimator;
    }];
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
