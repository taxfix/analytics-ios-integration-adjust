//
//  SEGAppDelegate.m
//  Segment-Adjust
//
//  Created by Prateek Srivastava on 11/10/2015.
//  Copyright (c) 2015 Prateek Srivastava. All rights reserved.
//

#import "SEGAppDelegate.h"
#import <Analytics/SEGAnalytics.h>
#import <Segment-Adjust/SEGAdjustIntegrationFactory.h>
#if __IPHONE_14_0
@import AppTrackingTransparency;
#endif
@import AdSupport;

@implementation SEGAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    [SEGAnalytics debug:YES];
    SEGAnalyticsConfiguration *config = [SEGAnalyticsConfiguration configurationWithWriteKey:@"YOUR_WRITE_KEY_HERE"];

    // Add any of your bundled integrations.
    [config use:[SEGAdjustIntegrationFactory instance]];

    if (@available(iOS 14, *)) {
        [config setAdSupportBlock:^NSString * _Nonnull(void) {
            NSString *idfa = [[[ASIdentifierManager sharedManager] advertisingIdentifier] UUIDString];
            return idfa;
        }];
    }

    [SEGAnalytics setupWithConfiguration:config];

    [[SEGAnalytics sharedAnalytics] identify:@"segment-fake-tester"
                                      traits:@{ @"email" : @"tool@fake-segment-tester.com" }];

    [[SEGAnalytics sharedAnalytics] track:@"Completed Order"
                               properties:@{ @"title" : @"Launch Screen",
                                             @"revenue" : @14.51 }];

    [[SEGAnalytics sharedAnalytics] flush];
    [SEGAnalytics debug:YES];
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
