//
//  ViewController.h
//  testemapa
//
//  Created by CasaDaArvore on 02/10/14.
//  Copyright (c) 2014 Elis Nunes. All rights reserved.
//

#import "ViewController.h"

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface ViewController : UIViewController <MKMapViewDelegate>
@property (strong, nonatomic) IBOutlet MKMapView *mapView;
- (IBAction)zoomIn:(id)sender;
- (IBAction)changeMapType:(id)sender;

@end

