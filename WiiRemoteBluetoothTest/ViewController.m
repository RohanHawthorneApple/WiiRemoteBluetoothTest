//
//  ViewController.m
//  WiiRemoteBluetoothTest
//
//  Created by Rohan Hawthorne on 15/5/17.
//  Copyright © 2017 Rohan Hawthorne. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize LogTextView;
@synthesize myCentralManager;
@synthesize discoveredPeripherals;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)centralManagerDidUpdateState:(CBCentralManager *)central {
    
    LogTextView.text = [LogTextView.text stringByAppendingString:@"Central Manager changed state\n"];
    
}

- (IBAction)StartCentralManager:(id)sender {
    
    LogTextView.text = @"Starting Central Manager\n";
    
    myCentralManager = [[CBCentralManager alloc] initWithDelegate:self queue:nil options:nil];
    
}

- (void)centralManager:(CBCentralManager *)central
 didDiscoverPeripheral:(CBPeripheral *)peripheral
     advertisementData:(NSDictionary *)advertisementData
                  RSSI:(NSNumber *)RSSI {
    
    [discoveredPeripherals addObject:peripheral];
    LogTextView.text = [LogTextView.text stringByAppendingString:[NSString stringWithFormat:@"%@...%@\n", @"Found", peripheral.name]];
}


- (IBAction)SearchForAdvertisers:(id)sender {
    
    LogTextView.text = [LogTextView.text stringByAppendingString:@"Searching for Advertisers...\n"];
    
    [myCentralManager scanForPeripheralsWithServices:nil options:nil];
    
}


- (IBAction)StopScanning:(id)sender {
    
    LogTextView.text = [LogTextView.text stringByAppendingString:@"Stopping search."];
    
    [myCentralManager stopScan];

}


@end
