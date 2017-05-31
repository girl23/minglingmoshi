//
//  LightOffCommand.h
//  minglingmoshi
//
//  Created by wdwk on 2017/5/31.
//  Copyright © 2017年 wksc. All rights reserved.
//

#import "Command.h"
#import "Light.h"
@interface LightOffCommand : Command
@property(nonatomic, strong)Light *light;
-(void)LightOffCommand:(Light *)light;
@end
