//
//  ViewController.m
//  minglingmoshi
//
//  Created by wdwk on 2017/5/31.
//  Copyright © 2017年 wksc. All rights reserved.
//

#import "ViewController.h"

#import "LightOnCommand.h"
#import "LightOffCommand.h"
#import "Light.h"

#import "StereoOnWIthCDCommand.h"
#import "StereoOffWithCDCommand.h"
#import "Stereo.h"

#import "SimpleRomoteCotrol.h"
#import "RemoteControl.h"
@interface ViewController ()

@end

@implementation ViewController
//将发出请求的对象和接受与执行这个请求的对象分隔开；；
//命令模式定义：将“请求”封装成对象，以便使用不同的请求、队列或者日志来参数化其对象。命令模式也支持可撤销的操作；
//命令对象将动作和接收者包进对象中只暴露出一个excute()方法；
//
//新理解：命令对象实现了接口的方法：并将接受者的动作和接收者包进对象，在接口中只暴露出一个方法供外界使用
//宏命令中：用命令数组存储一大堆命令；
- (void)viewDidLoad {
    [super viewDidLoad];
    //测试简单命令使用，
//    SimpleRomoteCotrol * remote=[SimpleRomoteCotrol new];
//    
//    LightOnCommand * lightOnCommand=[LightOnCommand new];
//    Light * light=[Light new];
//    [lightOnCommand lightOnCommand:light];
//    
//     remote.slot=lightOnCommand;
//    [remote buttonWasPressed];
    
//    测试遥控器
//    初始化遥控器
    RemoteControl *remote=[RemoteControl new];
    [remote remoteControl];
    //初始化灯和音响
    Light *light=[Light new];
    Stereo *stereo=[Stereo new];
//    初始化打开灯灯命令
    LightOnCommand *lightOnCommand=[LightOnCommand new];
    [lightOnCommand lightOnCommand:light];
//    初始化关闭灯灯命令
    LightOffCommand *lightOffCommand=[LightOffCommand new];
    [lightOffCommand LightOffCommand:light];
    //初始化打开音响的命令
    StereoOnWIthCDCommand *stereoOnWithCDCommand=[StereoOnWIthCDCommand new];
    [stereoOnWithCDCommand stereoOnWithCDCommand:stereo];
//    初始化关闭音响的命令
    StereoOffWithCDCommand *stereoOffWithCDCommand=[StereoOffWithCDCommand new];
    [stereoOffWithCDCommand stereoOffWithCDCommand:stereo];
    
//    将命令赋给相应插槽
    [remote setCommandWithSlot:0 onCommand:lightOnCommand offCommand:lightOffCommand];
    [remote setCommandWithSlot:1 onCommand:stereoOnWithCDCommand offCommand:stereoOffWithCDCommand];
//    测试相应操作
    [remote onButtonWasPushed:0];
    [remote offButtonWasPushed:0];
    

    
    [remote onButtonWasPushed:1];
    [remote offButtonWasPushed:1];

        [remote undoButtonWasPushed];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
