# BWSingletonTool

- 在程序运行过程中，一个类只有一个唯一的实例，而且该实例提供一个访问点，易于供外界访问
- 控制实例个数，节约系统资源

### 单例工具类
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

### 单例模式的宏抽取

以上方法定义单例模式只适用于单个对象，如果在程序中有多个对象都需要用到单例模式时，再使用上述的方法就会显得比较笨重，这时我们就可以使用宏把单例模式抽取出来，方便以后开发中的使用。
- 使用说明：如果现在需要定义一个单例类 Person，则只需要在 Person 类的 .h 文件中导入宏，然后调用 interfaceSingleton 方法：

```
interfaceSingleton(Person);
```
在 Person 类的 .m 文件中调用 implementationSingleton 方法即可。

```
implementationSingleton(Person);
```
通过以下测试查看结果：

```
Person *p1 = [[Person alloc]init];
Person *p2 = [Person new];
Person *p3 = [Person sharePerson];
Person *p4 = [p3 copy];
Person *p5 = [p3 mutableCopy];
```
得到打印结果为：

![宏抽取单例创建对象打印结果](http://upload-images.jianshu.io/upload_images/2997426-012ea3069e8b9a6f.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

至此，说明宏抽取的单例已经可以使用。
