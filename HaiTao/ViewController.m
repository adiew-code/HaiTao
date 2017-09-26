//
//  ViewController.m
//  HaiTao
//
//  Created by weida on 2017/9/25.
//  Copyright © 2017年 JieMao Technology. All rights reserved.
//

#import "ViewController.h"
#import "GoogleMapViewController.h"
#import "XunFeiVoiceViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = NSLocalizedString(@"Title", nil);
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *googleMapBtn = [[UIButton alloc]initWithFrame:CGRectMake(100, 100, 200, 50)];
    googleMapBtn.backgroundColor = [UIColor greenColor];
    [googleMapBtn setTitle:@"GoogleMap" forState:UIControlStateNormal];
    [googleMapBtn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [googleMapBtn addTarget:self action:@selector(ClickToGoogleMap) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:googleMapBtn];
    
    UIButton *xunFeiBtn = [[UIButton alloc]initWithFrame:CGRectMake(100, 200, 200, 50)];
    xunFeiBtn.backgroundColor = [UIColor greenColor];
    [xunFeiBtn setTitle:@"讯飞语音" forState:UIControlStateNormal];
    [xunFeiBtn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [xunFeiBtn addTarget:self action:@selector(ClickToXunFeiVoice) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:xunFeiBtn];
    
}

-(void)ClickToXunFeiVoice{
    XunFeiVoiceViewController *voice = [[XunFeiVoiceViewController alloc]init];
    
    [self.navigationController pushViewController:voice animated:YES];
}

-(void) ClickToGoogleMap{
    GoogleMapViewController *a = [[GoogleMapViewController alloc]init];
    
    [self.navigationController pushViewController:a animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
