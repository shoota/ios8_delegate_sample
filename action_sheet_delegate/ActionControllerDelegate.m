//
//  ActionControllerDelegate.m
//  action_sheet_delegate
//
//  Created by kumano shuta on 2015/02/19.
//  Copyright (c) 2015年 kumano shuta. All rights reserved.
//

#import "ActionControllerDelegate.h"

@implementation ActionControllerDelegate

@synthesize delegate;


- (id)init {
    if (self = [super init]) {
        // 初期化処理
    }
    return self;
}

- (UIAlertController *)createSimpleAlert:(NSString *)title message:(NSString *)message {
    
    UIAlertController *ac = [UIAlertController alertControllerWithTitle:title
                                                                message:message
                                                         preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *action = [UIAlertAction actionWithTitle:@"OK"
                                                     style:UIAlertActionStyleDefault
                                                   handler:^(UIAlertAction *action) {
                                                       [self executeDefaultAction];
                                                   }];
    [ac addAction:action];
    return ac;
}

- (void)executeDefaultAction {
    if ([self.delegate respondsToSelector:@selector(defaultAction)]) {
        [self.delegate defaultAction];
    } else {
        NSLog(@"Not to Do.");
    }
}

@end
