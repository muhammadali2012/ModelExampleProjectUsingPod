//
//  StringHexToColor.swift
//  PakWheels
//
//  Created by Muhammad Ali on 24/05/2023.
//  Copyright © 2023 Confiz Solutions. All rights reserved.
//

import Foundation
//import UIKit
@propertyWrapper public struct StringHexToColor: CodAbleInetilizer {
    static public var defaultValue: String = ""
    public var wrappedValue: String
//    public var projectedValue: UIColor {
//        let cString = wrappedValue.trimmingCharacters(in: CharacterSet(charactersIn: "#")).uppercased()
//        var hexNum: UInt32 = 0
//        if cString.count < 6 {
//            hexNum = 0x808080
//        } else {
//            hexNum = UInt32(cString, radix: 16)!
//        }
//        let redComponent = (hexNum & 0xFF0000) >> 16
//        let greenComponent = (hexNum & 0x00FF00) >> 8
//        let blueComponent = hexNum & 0x0000FF
//        var color = UIColor.init(red: CGFloat(redComponent) / 255, green: CGFloat(greenComponent) / 255, blue: CGFloat(blueComponent) / 255, alpha: 1)
//        return color
//    }
    public init(wrappedValue: String) {
        self.wrappedValue = wrappedValue
    }
}
