//
//  AppDelegate.m
//  BemVindo
//
//  Created by André Guedes on 17/12/15.
//  Copyright © 2015 André Ricardo de Souza Guedes. All rights reserved.
//

#import "AppDelegate.h"
#import "MeuPrimeiroViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    
    MeuPrimeiroViewController *vc = nil;
    
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        vc = [[MeuPrimeiroViewController alloc] initWithNibName:@"MeuPrimeiroViewController" bundle:nil];
    } else {
        vc = [[MeuPrimeiroViewController alloc] initWithNibName:@"MeuPrimeiroViewController_iPad" bundle:nil];
    }
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];
    //nav.navigationBar.hidden = YES;
    self.window.rootViewController = nav;
    
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
   
}

- (void)applicationWillTerminate:(UIApplication *)application {
    
}

@end
