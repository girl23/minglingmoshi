//
//  StereoOffWithCDCommand.m
//  minglingmoshi
//
//  Created by wdwk on 2017/5/31.
//  Copyright © 2017年 wksc. All rights reserved.
//

#import "StereoOffWithCDCommand.h"

@implementation StereoOffWithCDCommand
-(void)stereoOffWithCDCommand:(Stereo *)stereo{
    self.stereo=stereo;
}
-(void)excute{
    [self.stereo off];
}
-(void)undo{
    [self.stereo on];
    [self.stereo setCd];
    [self.stereo setVolume];
}
@end
