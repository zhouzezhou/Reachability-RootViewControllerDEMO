//
//  ViewController.m
//  ReachabilityStudy
//
//  Created by zhouzezhou on 2017/7/11.
//  Copyright © 2017年 Zzz. All rights reserved.
//

#import "ViewController.h"
#import "AFNetworkReachabilityManager.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *displayLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(printNetStatus:)name: AFNetworkingReachabilityDidChangeNotification object:nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillAppear:(BOOL)animated
{
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(printNetStatus:)name: AFNetworkingReachabilityDidChangeNotification object:nil];

    NSLog(@"viewControllers is:\n%@",[self.navigationController viewControllers]);
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

#pragma mark - private mothed 
-(void) printNetStatus: (id)sender
{
    
    int status = [[[sender userInfo] objectForKey: AFNetworkingReachabilityNotificationStatusItem] intValue];
    NSLog(@"AVC network status is :%@",AFStringFromNetworkReachabilityStatus(status));
    
    self.displayLabel.text = AFStringFromNetworkReachabilityStatus(status);
}

@end
