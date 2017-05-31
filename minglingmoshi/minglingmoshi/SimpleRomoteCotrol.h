//
//  SimpleRomoteCotrol.h
//  minglingmoshi
//
//  Created by wdwk on 2017/5/31.
//  Copyright © 2017年 wksc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Command.h"
//使用命令对象(简单遥控器测试)
@interface SimpleRomoteCotrol : NSObject

@property(nonatomic, strong)Command * slot;
-(void)simpleRemoteCotrol;
-(void)buttonWasPressed;

@end
