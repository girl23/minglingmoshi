//
//  RemoteControl.m
//  minglingmoshi
//
//  Created by wdwk on 2017/5/31.
//  Copyright © 2017年 wksc. All rights reserved.
//

#import "RemoteControl.h"
#import "NoCommand.h"
@implementation RemoteControl
-(void)remoteControl{
//    初始化插槽
    self.onCommand=[NSMutableArray new];
    self.offCommand=[NSMutableArray new];
    
    Command *noCommand=[NoCommand new];
//    给每个插槽赋空命令
    for (int i=0; i<7; i++) {
        self.onCommand[i]=noCommand;
        self.offCommand[i]=noCommand;
    }
//    一开始，并没前一个命令，所以将它设置为noCommand;
    self.undoCommand=noCommand;
}
-(void)setCommandWithSlot:(int)slot onCommand:(Command *)onCommand offCommand:(Command *)offCommand{
//    将命令指定到插槽，
    self.onCommand[slot]=onCommand;
    self.offCommand[slot]=offCommand;
}
//开关开命令被点击
-(void)onButtonWasPushed:(int)slot{
    [self.onCommand[slot] excute];
    self.undoCommand=self.onCommand[slot];
}
//开关关命令被点击
-(void)offButtonWasPushed:(int)slot{
    [self.offCommand[slot] excute];
    self.undoCommand=self.offCommand[slot];
}
-(void)undoButtonWasPushed{
    [self.undoCommand undo];
}
@end
