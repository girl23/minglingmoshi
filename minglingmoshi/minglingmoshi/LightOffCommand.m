//
//  LightOffCommand.m
//  minglingmoshi
//
//  Created by wdwk on 2017/5/31.
//  Copyright © 2017年 wksc. All rights reserved.
//

#import "LightOffCommand.h"

@implementation LightOffCommand
-(void)LightOffCommand:(Light *)light{
    self.light=light;
}
-(void)excute{
    [self.light off];
}
-(void)undo{
    [self.light on];
}
@end
