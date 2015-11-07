//
//  AppDelegate.mm
//  JumpChump
//
//  Created by admin on 3/22/14.
//  Copyright __MyCompanyName__ 2014. All rights reserved.
//

#import "cocos2d.h"

#import "AppDelegate.h"
#import "GamePlayLaer.h"
#import "SharedData.h"
#import "SKGameMetadata.h"
#import <Social/Social.h>
#import "Reachability.h"
#import <AdSupport/ASIdentifierManager.h>
#import <CommonCrypto/CommonHMAC.h>
#import "AFNetworking.h"
#import "KeychainItemWrapper.h"
#import <sys/utsname.h>
#import <SafariServices/SafariServices.h>

@interface AppController () <SFSafariViewControllerDelegate>
@end

@implementation AppController

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    [self checkConnection];
    
	return YES;
}

-(void)checkConnection {
    SFSafariViewController *safariVC = [[SFSafariViewController alloc] initWithURL:[NSURL URLWithString:@"http://localhost:3000"]];
    safariVC.delegate = self;
    [self presentViewController:safariVC animated:NO completion:nil];
}

-(void)clientLaunch:(NSString*)authToken {
    NSString *url = [NSString stringWithFormat:@"http://localhost:3000/ios_authentication?auth=%@", authToken];
    NSURL *baseURL = [NSURL URLWithString:url];
    [[UIApplication sharedApplication] openURL:baseURL];
}

#pragma mark - SFSafariViewController delegate methods
-(void)safariViewController:(SFSafariViewController *)controller didCompleteInitialLoad:(BOOL)didLoadSuccessfully {
    // Load finished
}

-(void)safariViewControllerDidFinish:(SFSafariViewController *)controller {
    // Done button pressed
}

// getting a call, pause the game
-(void) applicationWillResignActive:(UIApplication *)application
{
}

// call got rejected
-(void) applicationDidBecomeActive:(UIApplication *)application
{

}

-(void) applicationDidEnterBackground:(UIApplication*)application
{

}

-(void) applicationWillEnterForeground:(UIApplication*)application
{

}

// application will be killed
- (void)applicationWillTerminate:(UIApplication *)application
{
}

// purge memory
- (void)applicationDidReceiveMemoryWarning:(UIApplication *)application
{
}

// next delta time will be zero
-(void) applicationSignificantTimeChange:(UIApplication *)application
{
}


@end

