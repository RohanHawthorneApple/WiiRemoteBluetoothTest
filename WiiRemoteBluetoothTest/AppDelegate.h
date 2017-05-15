//
//  AppDelegate.h
//  WiiRemoteBluetoothTest
//
//  Created by Rohan Hawthorne on 15/5/17.
//  Copyright © 2017 Rohan Hawthorne. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

