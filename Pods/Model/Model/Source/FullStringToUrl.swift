//
//  FullStringToUrl.swift
//  PakWheels
//
//  Created by Muhammad Ali on 16/02/2023.
//  Copyright © 2023 Confiz Solutions. All rights reserved.
//

import Foundation
@propertyWrapper public struct FullStringToUrl: CodAbleInetilizer {
    static public var defaultValue: String? = ""
    public var wrappedValue: String?
    public var projectedValue: URL? {
        if let nonOptionalWrappeddValue = wrappedValue, nonOptionalWrappeddValue != FullStringToUrl.defaultValue {
            return URL(string: nonOptionalWrappeddValue)
        } else {
            return nil
        }
    }

    public init(wrappedValue: String?) {
        self.wrappedValue = wrappedValue
    }
}
