//
//  ViewController.m
//  HaiTao
//
//  Created by weida on 2017/9/25.
//  Copyright © 2017年 JieMao Technology. All rights reserved.
//

#import "ViewController.h"
#import "GoogleMapViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Welcome Back";
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *googleMapBtn = [[UIButton alloc]initWithFrame:CGRectMake(100, 100, 200, 50)];
    googleMapBtn.backgroundColor = [UIColor greenColor];
    [googleMapBtn setTitle:@"GoogleMap" forState:UIControlStateNormal];
    [googleMapBtn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [googleMapBtn addTarget:self action:@selector(ClickToGoogleMap) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:googleMapBtn];
    
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
