//
//  ViewController.m
//  testemapa
//
//  Created by CasaDaArvore on 02/10/14.
//  Copyright (c) 2014 Elis Nunes. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


- (IBAction)zoomIn:(id)sender
{
    MKUserLocation *userLocation = _mapView.userLocation;
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(userLocation.location.coordinate, 500, 500);
    [_mapView setRegion:region animated:YES];
}
- (IBAction)changeMapType:(id)sender
{
    if (_mapView.mapType == MKMapTypeStandard){
        _mapView.mapType = MKMapTypeSatellite;
     }else{
         _mapView.mapType = MKMapTypeStandard;
     }
}


- (void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation{
    //_mapView.centerCoordinate = userLocation.location.coordinate;
}

- (void)viewDidAppear:(BOOL)animated{
    /*MKUserLocation *userLocation = _mapView.userLocation;
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(userLocation.location.coordinate, 500, 500);
    [_mapView setRegion:region animated:YES];*/
}
- (void)viewDidLoad {
    [super viewDidLoad];
    _mapView.showsUserLocation = YES;
    
   /* MKUserLocation *userLocation = _mapView.userLocation;
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(userLocation.location.coordinate, 500, 500);
    [_mapView setRegion:region animated:YES];*/
    
   /* UIBarButtonItem *leftItem = [[UIBarButtonItem alloc] initWithTitle:@"Gasolina Comum"
                                                                 style:UIBarButtonItemStyleBordered
                                                                target:self
                                                                action:@selector(leftItemAction)];
    
    UIBarButtonItem *rightItem = [[UIBarButtonItem alloc] initWithTitle:@"Novo Posto"
                                                                  style:UIBarButtonItemStyleBordered
                                                                 target:self
                                                                 action:@selector(rightItemAction)];
    self.navigationItem.rightBarButtonItem = rightItem;
    self.navigationItem.leftBarButtonItem = leftItem;
    */
    
}


- (void)leftItemAction
{
    NSLog(@"left button");
}

- (void)rightItemAction
{
    NSLog(@"right button");
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
