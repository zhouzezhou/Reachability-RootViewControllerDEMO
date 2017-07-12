//
//  BViewController.m
//  ReachabilityStudy
//
//  Created by zhouzezhou on 2017/7/11.
//  Copyright © 2017年 Zzz. All rights reserved.
//

#import "BViewController.h"
#import "AFNetworkReachabilityManager.h"
#import "SubA1ViewController.h"
//#import "MainNavigationViewController.h"
#import "AppDelegate.h"

@interface BViewController ()

@property (weak, nonatomic) IBOutlet UILabel *displayLabel;

@end

@implementation BViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(printNetStatus:)name: AFNetworkingReachabilityDidChangeNotification object:nil];
    
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    NSLog(@"viewControllers is:\n%@",[self.navigationController viewControllers]);
}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(printNetStatus:)name: AFNetworkingReachabilityDidChangeNotification object:nil];
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
    
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

//-(void)dealloc
//{
//    [[NSNotificationCenter defaultCenter] removeObserver:self];
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - private mothed
-(void) printNetStatus: (id)sender
{
    int status = [[[sender userInfo] objectForKey: AFNetworkingReachabilityNotificationStatusItem] intValue];
    NSLog(@"BVC network status is :%@",AFStringFromNetworkReachabilityStatus(status));
    
    self.displayLabel.text = AFStringFromNetworkReachabilityStatus(status);
}

#pragma mark - widget respon 

- (IBAction)buttonClick:(UIButton *)sender {
    
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}
- (IBAction)go2SubStoryBoardButtonClick:(UIButton *)sender {
    
    UIStoryboard *subStoryBoard = [UIStoryboard storyboardWithName:@"Sub" bundle:nil];
    SubA1ViewController *subA1VC = [subStoryBoard instantiateViewControllerWithIdentifier:@"SubA1ViewController"];
//    MainNavigationViewController *SubStoryBoardNC = [subStoryBoard instantiateViewControllerWithIdentifier:@"MainNavigationViewController"];
    
    
    [self.navigationController pushViewController:subA1VC animated:YES];
    
//    [UIApplication sharedApplication].windows
    
    AppDelegate *delegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
    [delegate setRootViewControllerSubVC];
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
