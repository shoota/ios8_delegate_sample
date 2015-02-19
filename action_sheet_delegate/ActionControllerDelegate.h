//
//  ActionControllerDelegate.h
//  action_sheet_delegate
//
//  Created by kumano shuta on 2015/02/19.
//  Copyright (c) 2015年 kumano shuta. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol ActionControllerDelegate <NSObject>

@optional
- (void)defaultAction;

@end


@interface ActionControllerDelegate : NSObject

@property (nonatomic, assign) id<ActionControllerDelegate> delegate;

- (id) init;

- (UIAlertController *) createSimpleAlert:(NSString*)title message:(NSString*)message;


- (void) executeDefaultAction;

@end
