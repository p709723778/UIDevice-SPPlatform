## UIDevice-SPPlatform

在不同设备上获取对应的设备类型名称,分别写了Objective-C和Swift两个版本
如有新的设备类型没有更新上去,请大家给我发E-Mail 或者 留言!我会定时更新!



## 如何获取最新款手机的标识?

因为有的同学比较关心最新款手机,所以也想在开发中获取机型的代码也更新为最新的标识,这样显得比较专业😄

那好,满足老铁们的愿望,代码敬上:



## Objective-C

```objective-c
/// 设备名称 (比如: iPhone 1G)
NSString *SIMULATOR_DEVICE_NAME = NSProcessInfo.processInfo.environment[@"SIMULATOR_DEVICE_NAME"];

/// 对应设备机型标识 (比如: iPhone1,1)
NSString *SIMULATOR_MODEL_IDENTIFIER = NSProcessInfo.processInfo.environment[@"SIMULATOR_MODEL_IDENTIFIER"];

NSLog(@"设备名称: %@", SIMULATOR_DEVICE_NAME);
NSLog(@"机型标识: %@", SIMULATOR_MODEL_IDENTIFIER);
```



### Swfit

```swift
/// 设备名称 (比如: iPhone 1G)
let SIMULATOR_DEVICE_NAME = ProcessInfo.processInfo.environment["SIMULATOR_DEVICE_NAME"]!

/// 对应设备机型标识 (比如: iPhone1,1)
let SIMULATOR_MODEL_IDENTIFIER = ProcessInfo.processInfo.environment["SIMULATOR_MODEL_IDENTIFIER"]!

print("设备名称: " + SIMULATOR_DEVICE_NAME)
print("机型标识: " + SIMULATOR_MODEL_IDENTIFIER)
```



以**iPhone 11 Pro Max**为例,日志如下:

> 设备名称: iPhone 11 Pro Max
>
> 机型标识: iPhone12,5

