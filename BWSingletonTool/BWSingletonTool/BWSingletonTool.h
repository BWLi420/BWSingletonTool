//
//  BWSingletonTool.h
//  BWSingletonTool
//
//  Created by mortal on 16/10/1.
//  Copyright © 2016年 mortal. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BWSingletonTool : NSObject <NSCopying,NSMutableCopying>

//提供类方法
/*
 1)方便访问
 2)身份标识
 3)规范:share | share + 类名 |default |default + 类名 |类名
 */

+(instancetype)shareTool;
@end
