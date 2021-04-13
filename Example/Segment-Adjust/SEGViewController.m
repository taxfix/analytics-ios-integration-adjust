//
//  SEGViewController.m
//  Segment-Adjust
//
//  Created by Prateek Srivastava on 11/10/2015.
//  Copyright (c) 2015 Prateek Srivastava. All rights reserved.
//

#import "SEGViewController.h"
#if __IPHONE_14_0
@import AppTrackingTransparency;
#endif
@import AdSupport;
#import <Analytics/SEGAnalytics.h>


@interface SEGViewController ()

@end


@implementation SEGViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self addIDFATracking];
    [[SEGAnalytics sharedAnalytics] track:@"iOS14 and stuff"];

}


- (void) addIDFATracking {
    
    if (@available(iOS 14, *)) {
        if (ATTrackingManager.trackingAuthorizationStatus == ATTrackingManagerAuthorizationStatusNotDetermined){
            [ATTrackingManager requestTrackingAuthorizationWithCompletionHandler:^(ATTrackingManagerAuthorizationStatus status) {
                
                NSString *idfa = ASIdentifierManager.sharedManager.advertisingIdentifier.UUIDString;
                NSString *idfv = UIDevice.currentDevice.identifierForVendor.UUIDString ? UIDevice.currentDevice.identifierForVendor.UUIDString : @"0000";
                
                if (status == ATTrackingManagerAuthorizationStatusAuthorized) {
                    [[SEGAnalytics sharedAnalytics] track:@"iOS14 tracking enabled"
                                               properties:@{ @"IDFA" : idfa,
                                                 @"IDFV" : idfv }];
                    
                } else {
                    [[SEGAnalytics sharedAnalytics] track:@"iOS14 tracking NOT enabled"
                                               properties:@{ @"IDFA" : idfa,
                                                 @"IDFV" : idfv }];
                }
                
                // your authorization handler here
                // note: the Singular SDK will automatically detect if authorization has been given and initialize itself
            }];
        }
    } else {
        NSString *idfa = ASIdentifierManager.sharedManager.advertisingIdentifier.UUIDString;
        NSString *idfv = UIDevice.currentDevice.identifierForVendor.UUIDString ? UIDevice.currentDevice.identifierForVendor.UUIDString : @"0000";
        [[SEGAnalytics sharedAnalytics] track:@"iOS14 tracking after dialog"
                                   properties:@{ @"IDFA" : idfa,
                                     @"IDFV" : idfv }];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
