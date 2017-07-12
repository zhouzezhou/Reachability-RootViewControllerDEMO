//
//  C3ViewController.m
//  ReachabilityStudy
//
//  Created by zhouzezhou on 2017/7/11.
//  Copyright © 2017年 Zzz. All rights reserved.
//

#import "C3ViewController.h"

@interface C3ViewController ()

@end

@implementation C3ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    NSLog(@"viewControllers is:\n%@",[self.navigationController viewControllers]);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)exitButtonClick:(UIButton *)sender {
    
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
