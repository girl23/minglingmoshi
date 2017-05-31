//
//  LightOnCommand.m
//  minglingmoshi
//
//  Created by wdwk on 2017/5/31.
//  Copyright © 2017年 wksc. All rights reserved.
//

#import "LightOnCommand.h"

@implementation LightOnCommand
-(void)excute{
    [self.light on];
}
-(void)lightOnCommand:(Light *)light{
    self.light=light;
}
-(void)undo{
    [self.light off];
}
@end
