//
//  StereoOnWIthCDCommand.h
//  minglingmoshi
//
//  Created by wdwk on 2017/5/31.
//  Copyright © 2017年 wksc. All rights reserved.
//

#import "Command.h"
#import "Stereo.h"
@interface StereoOnWIthCDCommand : Command
@property(nonatomic, strong)Stereo *stereo;
-(void)stereoOnWithCDCommand:(Stereo *)stereo;
@end
