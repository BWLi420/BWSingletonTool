//
//  main.m
//  BWSingletonTool
//
//  Created by mortal on 16/10/1.
//  Copyright © 2016年 mortal. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //测试单例工具类
        Person *p1 = [Person new];
        Person *p2 = [[Person alloc] init];
        Person *p3 = [Person sharePerson];
        Person *p4 = [p3 copy];
        Person *p5 = [p4 mutableCopy];
        
        //打印地址
        NSLog(@"p1 = %p", p1);
        NSLog(@"p2 = %p", p2);
        NSLog(@"p3 = %p", p3);
        NSLog(@"p4 = %p", p4);
        NSLog(@"p5 = %p", p5);
    }
    return 0;
}
