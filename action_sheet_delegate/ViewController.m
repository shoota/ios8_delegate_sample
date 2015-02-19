//
//  ViewController.m
//  action_sheet_delegate
//
//  Created by kumano shuta on 2015/02/19.
//  Copyright (c) 2015年 kumano shuta. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)alert:(id)sender;

@end

@implementation ViewController {
    @private
    ActionControllerDelegate *_acd;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
 
    _acd = [[ActionControllerDelegate alloc] init];
    _acd.delegate = self;
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void) defaultAction {
    NSLog(@"Tapped OK on ActionAlert");
}


- (IBAction)alert:(id)sender {
    UIAlertController *ac = [_acd createSimpleAlert:@"hello" message:@"this is message!"];
    
    [self presentViewController:ac animated:YES completion:nil];
    
}
@end
