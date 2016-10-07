# BWSingletonTool
通过单例模式可以保证系统中一个类只有一个实例
单例工具类
```
//测试单例工具类
BWSingletonTool *p2 = [BWSingletonTool new];
BWSingletonTool *p1 = [[BWSingletonTool alloc] init];
BWSingletonTool *p3 = [BWSingletonTool shareTool];
        
//打印地址
NSLog(@"p1 = %p", p1);
NSLog(@"p2 = %p", p2);
NSLog(@"p3 = %p", p3);
```

##### 打印出来的结果为：
```
p1 = 0x1001026b0
p2 = 0x1001026b0
p3 = 0x1001026b0
```
