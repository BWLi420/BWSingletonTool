//
//  main.m
//  BWSingletonTool
//
//  Created by mortal on 16/10/1.
//  Copyright © 2016年 mortal. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BWSingletonTool.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //测试单例工具类
        BWSingletonTool *p2 = [BWSingletonTool new];
        BWSingletonTool *p1 = [[BWSingletonTool alloc] init];
        BWSingletonTool *p3 = [BWSingletonTool shareTool];
        
        //打印地址
        NSLog(@"p1 = %p", p1);
        NSLog(@"p2 = %p", p2);
        NSLog(@"p3 = %p", p3);
    }
    return 0;
}
