//
//  SubA1ViewController.m
//  ReachabilityStudy
//
//  Created by zhouzezhou on 2017/7/11.
//  Copyright © 2017年 Zzz. All rights reserved.
//

#import "SubA1ViewController.h"
#import "AppDelegate.h"
#import "ViewController.h"

@interface SubA1ViewController ()

@end

@implementation SubA1ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    NSLog(@"viewControllers is:\n%@",[self.navigationController viewControllers]);
}

#pragma mark - button respod 
- (IBAction)go2MainSBButtonClick:(UIButton *)sender {
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    ViewController *vc = [storyboard instantiateViewControllerWithIdentifier:@"ViewController"];
    
    [self.navigationController pushViewController:vc animated:YES];
    
    AppDelegate *delegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
    [delegate setRootViewControllerMainVC];
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
