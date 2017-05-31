//
//  RemoteControl.h
//  minglingmoshi
//
//  Created by wdwk on 2017/5/31.
//  Copyright © 2017年 wksc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Command.h"
//将命令指定到插槽，实现遥控器；
@interface RemoteControl : NSObject
@property(nonatomic, strong)NSMutableArray *onCommand;
@property(nonatomic, strong)NSMutableArray *offCommand;

/**
 记录最后一次按钮的操作；
 */
@property(nonatomic, strong)Command *undoCommand;
-(void)remoteControl;
-(void)setCommandWithSlot:(int)slot onCommand:(Command *)onCommand offCommand:(Command *)offCommand;
-(void)onButtonWasPushed:(int)slot;
-(void)offButtonWasPushed:(int)slot;
-(void)undoButtonWasPushed;
@end
