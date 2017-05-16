//
//  ViewController.h
//  WiiRemoteBluetoothTest
//
//  Created by Rohan Hawthorne on 15/5/17.
//  Copyright © 2017 Rohan Hawthorne. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreBluetooth/CoreBluetooth.h>

@interface ViewController : UIViewController <CBCentralManagerDelegate>

@property (weak, nonatomic) IBOutlet UITextView *LogTextView;
@property (strong, nonatomic) CBCentralManager *myCentralManager;
@property (strong, nonatomic) NSMutableArray *discoveredPeripherals;

@end



