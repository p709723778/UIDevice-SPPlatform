//
//  SPDevicePlatform.swift
//  SPPlatform
//
//  Created by SotoPoul on 2017/3/27.
//  Copyright © 2017年 SotoPoul. All rights reserved.
//

import Foundation
import UIKit

public extension UIDevice {
    static func platform() -> String {
        var systemInfo = utsname()
        uname(&systemInfo)

        let machineMirror = Mirror(reflecting: systemInfo.machine)

        let identifier = machineMirror.children.reduce("") { identifier, element in
            guard let value = element.value as? Int8, value != 0 else { return identifier }
            return identifier + String(UnicodeScalar(UInt8(value)))
        }

        return identifier
    }

    /// 获取设备类型信息
    ///
    /// - Returns: 设备名称
    static func platformString() -> String {
        let platform: String = UIDevice.platform()

        // iPhone
        if platform == "iPhone1,1" {
            return "iPhone 1G"
        }

        if platform == "iPhone1,2" {
            return "iPhone 3G"
        }

        if platform == "iPhone2,1" {
            return "iPhone 3GS"
        }

        if platform == "iPhone3,1" {
            return "iPhone 4 (GSM)"
        }

        if platform == "iPhone3,2" {
            return "Verizon iPhone 4"
        }

        if platform == "iPhone3,3" {
            return "iPhone 4 (CDMA)"
        }

        if platform == "iPhone4,1" {
            return "iPhone 4S"
        }

        if platform == "iPhone5,1" {
            return "iPhone 5 (A1428)"
        }

        if platform == "iPhone5,2" {
            return "iPhone 5 (A1429)"
        }

        if platform == "iPhone5,3" {
            return "iPhone 5c (A1456/A1532)"
        }

        if platform == "iPhone5,4" {
            return "iPhone 5c (A1507/A1516/A1529)"
        }

        if platform == "iPhone6,1" {
            return "iPhone 5s (A1433/A1453)"
        }

        if platform == "iPhone6,2" {
            return "iPhone 5s (A1457/A1518/A1530/A1528)"
        }

        if platform == "iPhone7,1" {
            return "iPhone 6 Plus"
        }

        if platform == "iPhone7,2" {
            return "iPhone 6"
        }

        if platform == "iPhone8,1" {
            return "iPhone 6s"
        }

        if platform == "iPhone8,2" {
            return "iPhone 6s Plus"
        }

        if platform == "iPhone8,4" {
            return "iPhone SE"
        }

        if platform == "iPhone9,1" {
            return "iPhone 7 (A1660/A1779/A1780)"
        }

        if platform == "iPhone9,2" {
            return "iPhone 7 Plus (A1661/A1785/A1786)"
        }

        if platform == "iPhone9,3" {
            return "iPhone 7 (A1778)"
        }

        if platform == "iPhone9,4" {
            return "iPhone 7 Plus (A1784)"
        }

        if platform == "iPhone10,1" {
            return "iPhone 8 (A1863/A1906/A1907)"
        }

        if platform == "iPhone10,2" {
            return "iPhone 8 Plus (A1864/A1898/A1899)"
        }

        if platform == "iPhone10,3" {
            return "iPhone X (A1865/A1902)"
        }

        if platform == "iPhone10,4" {
            return "iPhone 8 (A1905)"
        }

        if platform == "iPhone10,5" {
            return "iPhone 8 Plus (A1897)"
        }

        if platform == "iPhone10,6" {
            return "iPhone X (A1901)"
        }

        if platform == "iPhone11,2" {
            return "iPhone XS (A1920/A2097/A2098/A2100)"
        }

        if platform == "iPhone11,4" {
            return "iPhone XS Max (A1921/A2101/A2102)"
        }

        if platform == "iPhone11,6" {
            return "iPhone XS Max (A2104)"
        }

        if platform == "iPhone11,8" {
            return "iPhone XR (A1984/A2105/A2106/A2108)"
        }

        if platform == "iPhone12,1" {
            return "iPhone 11 (A2111)"
        }

        if platform == "iPhone12,3" {
            return "iPhone 11 Pro (A2160)"
        }

        if platform == "iPhone12,5" {
            return "iPhone 11 Pro Max (A2161)"
        }

        if platform == "iPhone12,8" {
            return "iPhone SE (2nd generation)"
        }

        if platform == "iPhone13,1" {
            return "iPhone 12 mini"
        }

        if platform == "iPhone13,2" {
            return "iPhone 12"
        }

        if platform == "iPhone13,3" {
            return "iPhone 12 Pro"
        }

        if platform == "iPhone13,4" {
            return "iPhone 12 Pro Max"
        }

        if platform == "iPhone14,2" {
            return "iPhone 13 Pro"
        }

        if platform == "iPhone14,3" {
            return "iPhone 13 Pro Max"
        }

        if platform == "iPhone14,4" {
            return "iPhone 13 mini"
        }

        if platform == "iPhone14,5" {
            return "iPhone 13"
        }
        
        if platform == "iPhone14,6" {
            return "iPhone SE (3rd generation)"
        }
        
        if platform == "iPhone14,7" {
            return "iPhone 14 (A2649/A2881/A2882/A2883/A2884)"
        }
        
        if platform == "iPhone14,8" {
            return "iPhone 14 Plus(A2632/A2885/A2886/A2887/A2888)"
        }
        
        if platform == "iPhone15,2" {
            return "iPhone 14 Pro(A2650/A2889/A2890/A2891/A2892)"
        }
        
        if platform == "iPhone15,3" {
            return "iPhone 14 Pro Max(A2651/A2893/A2894/A2895/A2896)"
        }
        

        // iPad
        if platform == "iPad1,1" {
            return "iPad Touch 1G"
        }

        if platform == "iPad2,1" {
            return "iPad 2 (Wi-Fi)"
        }

        if platform == "iPad2,2" {
            return "iPad 2 (GSM)"
        }

        if platform == "iPad2,3" {
            return "iPad 2 (CDMA)"
        }

        if platform == "iPad2,4" {
            return "iPad 2 (Wi-Fi, revised)"
        }

        if platform == "iPad2,5" {
            return "iPad mini (Wi-Fi)"
        }

        if platform == "iPad2,6" {
            return "iPad mini (A1454)"
        }

        if platform == "iPad2,7" {
            return "iPad mini (A1455)"
        }

        if platform == "iPad3,1" {
            return "iPad (3rd gen, Wi-Fi)"
        }

        if platform == "iPad3,2" {
            return "iPad (3rd gen, Wi-Fi+LTE Verizon)"
        }

        if platform == "iPad3,3" {
            return "iPad (3rd gen, Wi-Fi+LTE AT&T)"
        }

        if platform == "iPad3,4" {
            return "iPad (4th gen, Wi-Fi)"
        }

        if platform == "iPad3,5" {
            return "iPad (4th gen, A1459)"
        }

        if platform == "iPad3,6" {
            return "iPad (4th gen, A1460)"
        }

        if platform == "iPad4,1" {
            return "iPad Air (Wi-Fi)"
        }

        if platform == "iPad4,2" {
            return "iPad Air (Wi-Fi+LTE)"
        }

        if platform == "iPad4,3" {
            return "iPad Air (Rev)"
        }

        if platform == "iPad4,4" {
            return "iPad Mini (2nd gen, Wi-Fi)"
        }

        if platform == "iPad4,5" {
            return "iPad mini 2 (Wi-Fi+LTE)"
        }

        if platform == "iPad4,6" {
            return "iPad mini 2 (Rev)"
        }

        if platform == "iPad4,7" {
            return "iPad mini 3 (Wi-Fi)"
        }

        if platform == "iPad4,8" {
            return "iPad mini 3 (A1600)"
        }

        if platform == "iPad4,9" {
            return "iPad mini 3 (A1601)"
        }

        if platform == "iPad5,1" {
            return "iPad mini 4 (Wi-Fi)"
        }

        if platform == "iPad5,2" {
            return "iPad mini 4 (Wi-Fi+LTE)"
        }

        if platform == "iPad5,3" {
            return "iPad Air 2 (Wi-Fi)"
        }

        if platform == "iPad5,4" {
            return "iPad Air 2 (Wi-Fi+LTE)"
        }

        if platform == "iPad6,3" {
            return "iPad Pro (9.7 inch) (Wi-Fi)"
        }

        if platform == "iPad6,4" {
            return "iPad Pro (9.7 inch) (Wi-Fi+LTE)"
        }

        if platform == "iPad6,7" {
            return "iPad Pro (12.9 inch, Wi-Fi)"
        }

        if platform == "iPad6,8" {
            return "iPad Pro (12.9 inch, Wi-Fi+LTE)"
        }

        if platform == "iPad6,11" {
            return "iPad 9.7-Inch 5th Gen (Wi-Fi Only)"
        }

        if platform == "iPad6,12" {
            return "iPad 9.7-Inch 5th Gen (Wi-Fi/Cellular)"
        }

        if platform == "iPad7,3" {
            return "iPad Pro (10.5 inch, A1701)"
        }

        if platform == "iPad7,4" {
            return "iPad Pro (10.5 inch, A1709)"
        }

        if platform == "iPad7,5" {
            return "iPad (6th gen, A1893)"
        }

        if platform == "iPad7,6" {
            return "iPad (6th gen, A1954)"
        }

        if platform == "iPad8,1" {
            return "iPad Pro (11-inch, A1980)"
        }

        if platform == "iPad8,2" {
            return "iPad Pro (11-inch, A1980)"
        }

        if platform == "iPad8,3" {
            return "iPad Pro (11-inch, A1934/A1979/A2013)"
        }

        if platform == "iPad8,4" {
            return "iPad Pro (11-inch, A1934/A1979/A2013)"
        }

        if platform == "iPad8,5" {
            return "iPad Pro (11-inch, A1876)"
        }

        if platform == "iPad8,6" {
            return "iPad Pro (11-inch, A1876)"
        }

        if platform == "iPad8,7" {
            return "iPad Pro (11-inch, A1895/A1983/A2014)"
        }

        if platform == "iPad8,8" {
            return "iPad Pro (11-inch, A1895/A1983/A2014)"
        }

        if platform == "iPad11,1" {
            return "iPad mini (5th generation, A2133)"
        }

        if platform == "iPad11,2" {
            return "iPad mini (5th generation, A2124/A2125/A2126)"
        }

        if platform == "iPad11,3" {
            return "iPad Air (3rd generation, A2152)"
        }

        if platform == "iPad11,4" {
            return "iPad Air (3rd generation, A2123/A2153/A2154)"
        }

        if platform == "iPad11,6" {
            return "iPad (8th generation, A2270)"
        }

        if platform == "iPad11,7" {
            return "iPad (8th generation, A2428/A2429/A2430)"
        }

        if platform == "iPad13,1" {
            return "iPad Air (4th generation)"
        }

        if platform == "iPad13,2" {
            return "iPad Air (4th generation, A2324/A2072)"
        }
        
        if platform == "iPad14,1" {
            return "iPad mini (5th generation)"
        }

        if platform == "iPad14,2" {
            return "iPad mini (6th generation, A2568/A2569)"
        }

        // iPod
        if platform == "iPod1,1" {
            return "iPod touch"
        }

        if platform == "iPod2,1" {
            return "iPod touch (2nd gen)"
        }

        if platform == "iPod3,1" {
            return "iPod touch (3rd gen)"
        }

        if platform == "iPod4,1" {
            return "iPod touch (4th gen)"
        }

        if platform == "iPod5,1" {
            return "iPod touch (5th gen)"
        }

        if platform == "iPod7,1" {
            return "iPod touch (6th gen)"
        }

        if platform == "iPod9,1" {
            return "iPod touch (7th generation)"
        }

        // Xcode iOS Simulator
        if platform == "i386" {
            return "iOS i386 Simulator"
        }

        if platform == "x86_64" {
            return "iOS x86_64 Simulator"
        }

        print("NOTE: Unknown device type: " + platform)

        return platform
    }
}
