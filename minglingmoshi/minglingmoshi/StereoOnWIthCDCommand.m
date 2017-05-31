//
//  StereoOnWIthCDCommand.m
//  minglingmoshi
//
//  Created by wdwk on 2017/5/31.
//  Copyright © 2017年 wksc. All rights reserved.
//

#import "StereoOnWIthCDCommand.h"

@implementation StereoOnWIthCDCommand
-(void)stereoOnWithCDCommand:(Stereo *)stereo{
    self.stereo=stereo;
}
-(void)excute{
    [self.stereo on];
    [self.stereo setCd];
    [self.stereo setVolume];
}
-(void)undo{
    [self.stereo off];
}
@end
