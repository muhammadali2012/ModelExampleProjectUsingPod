//
//  DefaultStringEmpty.swift
//  PakWheels
//
//  Created by Muhammad Ali on 23/05/2023.
//  Copyright © 2023 Confiz Solutions. All rights reserved.
//

import Foundation

@propertyWrapper public struct DefaultStringEmpty: CodAbleInetilizer {
    static public var defaultValue: String = ""
    public var wrappedValue: String
    public init(wrappedValue: String) {
        self.wrappedValue = wrappedValue
    }
}
