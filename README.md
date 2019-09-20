## UIDevice-SPPlatform

在不同设备上获取对应的设备类型名称,分别写了 `Objective-C` 和 `Swift` 两个版本
如有新的设备类型没有更新上去,请大家给我发E-Mail 或者 留言!我会定时更新!



**------------------分界线以下是备用手段,仅供参考,实际代码还是以Demo里面的库文件为准------------------**



## 如何获取最新款手机的标识?(此方法留作备用)

因为有的同学比较关心最新款手机,所以也想在开发中获取机型的代码也更新为最新的标识,这样显得比较专业😄



<u>提醒: 此方法适用于模拟器,大部分真机无法获取</u>

1.每次苹果发布新机器的时候,大家都不知道对应机器的标识,下面的代码就可以获取

2.下面的代码可以获取对应模拟器机器的标识,但是无法获取具体的机型( 比如: `iPhone XS Max (A2104)` ),可以通过一些手段可以拿到

3.有一部分同学可能需要知道具体的机型那就无法满足了,Sorry! 

4.有的人担心此API是否会被苹果被拒,本人使用过不会被拒,实在是担心的话,你们在非 <u>DEBUG</u> 模式下不让代码参与编译



废话不多说,满足老铁们的愿望,代码敬上:



## Objective-C

```objective-c
/// 设备名称 (比如: iPhone XS Max)
NSString *SIMULATOR_DEVICE_NAME = NSProcessInfo.processInfo.environment[@"SIMULATOR_DEVICE_NAME"];

/// 对应设备机型标识 (比如: iPhone11,6)
NSString *SIMULATOR_MODEL_IDENTIFIER = NSProcessInfo.processInfo.environment[@"SIMULATOR_MODEL_IDENTIFIER"];

NSLog(@"设备名称: %@", SIMULATOR_DEVICE_NAME);
NSLog(@"机型标识: %@", SIMULATOR_MODEL_IDENTIFIER);
```



### Swfit

```swift
/// 设备名称 (比如: iPhone XS Max)
let SIMULATOR_DEVICE_NAME = ProcessInfo.processInfo.environment["SIMULATOR_DEVICE_NAME"]!

/// 对应设备机型标识 (比如: iPhone11,6)
let SIMULATOR_MODEL_IDENTIFIER = ProcessInfo.processInfo.environment["SIMULATOR_MODEL_IDENTIFIER"]!

print("设备名称: " + SIMULATOR_DEVICE_NAME)
print("机型标识: " + SIMULATOR_MODEL_IDENTIFIER)
```



以`iPhone 11 Pro Max`为例,日志如下:

> 设备名称: iPhone 11 Pro Max
>
> 机型标识: iPhone12,5



## 通过什么手段可以获取机型?

在此就以OC代码为例,Swift的就不详细写了!以下操作要选择模拟器来操作

从 `NSProcessInfo.processInfo.environment` 获取的字典对象里面得到 Key 为 `SIMULATOR_CAPABILITIES` 里面的值,此值为对应机型详细信息的plist文件,里面有很多信息

路径以 `iPhone 11 Pro Max` 的为例,找到plist里面对应 `ModelNumber` 字段就是机型:

> /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Library/Developer/CoreSimulator/Profiles/DeviceTypes/iPhone 11 Pro Max.simdevicetype/Contents/Resources/capabilities.plist