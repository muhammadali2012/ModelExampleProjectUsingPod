//
//  DefaultBoolFalse.swift
//  PakWheels
//
//  Created by Muhammad Ali on 23/05/2023.
//  Copyright © 2023 Confiz Solutions. All rights reserved.
//

import Foundation

@propertyWrapper public struct DefaultBoolFalse: CodAbleInetilizer {
    static public var defaultValue: Bool = false
    public var wrappedValue: Bool
    public init(wrappedValue: Bool) {
        self.wrappedValue = wrappedValue
    }
}
