//
//  GoogleMapViewController.m
//  HaiTao
//
//  Created by weida on 2017/9/26.
//  Copyright © 2017年 JieMao Technology. All rights reserved.
//

#import "GoogleMapViewController.h"
#import <GoogleMaps/GoogleMaps.h>

@interface GoogleMapViewController ()

@end

@implementation GoogleMapViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"GoogleMap Show";
    self.view.backgroundColor = [UIColor whiteColor];
    
}

-(void)loadView{    
    GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:-33.86
                                                            longitude:151.20
                                                                 zoom:6];
    GMSMapView *mapView = [GMSMapView mapWithFrame:CGRectZero camera:camera];
    mapView.myLocationEnabled = YES;
    self.view = mapView;
    
    // Creates a marker in the center of the map.
    GMSMarker *marker = [[GMSMarker alloc] init];
    marker.position = CLLocationCoordinate2DMake(-33.86, 151.20);
    marker.title = @"Sydney";
    marker.snippet = @"Australia";
    marker.map = mapView;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
