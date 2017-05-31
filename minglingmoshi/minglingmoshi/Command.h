//
//  Command.h
//  minglingmoshi
//
//  Created by wdwk on 2017/5/31.
//  Copyright © 2017年 wksc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Command : NSObject
-(void)excute;
//操作撤销按钮；
-(void)undo;
@end
