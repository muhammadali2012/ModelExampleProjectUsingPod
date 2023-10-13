//
//  DefaultStringEmptyArray.swift
//  Model
//
//  Created by Muhammad Ali on 12/10/2023.
//

import Foundation

@propertyWrapper public struct DefaultStringEmptyArray: CodAbleInetilizer {
    public static var defaultValue: [String]? = [String]()
    public var wrappedValue: [String]?
    public init(wrappedValue: [String]?) {
        self.wrappedValue = wrappedValue
    }
}
