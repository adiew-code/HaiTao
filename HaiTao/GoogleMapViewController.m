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
{
    GMSMapView *_mapView;
    BOOL _firstLocationUpdate;
}
@end

@implementation GoogleMapViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"GoogleMap Show";
    self.view.backgroundColor = [UIColor whiteColor];
    
    dispatch_async(dispatch_get_main_queue(), ^{
        _mapView.myLocationEnabled = YES;
    });
    
}

-(void)loadView{    
    GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:-33.868
                                                            longitude:151.2086
                                                                 zoom:12];
    _mapView = [GMSMapView mapWithFrame:CGRectZero camera:camera];
    _mapView.settings.compassButton = YES;
    _mapView.settings.myLocationButton = YES;
    
    // Listen to the myLocation property of GMSMapView.
    [_mapView addObserver:self
               forKeyPath:@"myLocation"
                  options:NSKeyValueObservingOptionNew
                  context:NULL];
    
    self.view = _mapView;
}

- (void)dealloc {
    [_mapView removeObserver:self
                  forKeyPath:@"myLocation"
                     context:NULL];
}

#pragma mark - KVO updates

- (void)observeValueForKeyPath:(NSString *)keyPath
                      ofObject:(id)object
                        change:(NSDictionary *)change
                       context:(void *)context {
    if (!_firstLocationUpdate) {
        
        _firstLocationUpdate = YES;
        CLLocation *location = [change objectForKey:NSKeyValueChangeNewKey];
        _mapView.camera = [GMSCameraPosition cameraWithTarget:location.coordinate
                                                         zoom:14];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
