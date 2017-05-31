//
//  LightOnCommand.h
//  minglingmoshi
//
//  Created by wdwk on 2017/5/31.
//  Copyright © 2017年 wksc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Command.h"
#import "Light.h"
@interface LightOnCommand : Command
@property(nonatomic, strong)Light *light;
-(void)lightOnCommand:(Light *)light;
@end
