//
//  AnyValueWrapper.swift
//  Model
//
//  Created by Muhammad Ali on 08/09/2023.
//

import Foundation
@propertyWrapper public struct AnyValueWrapper<T: CodAbleInetilizer> {
    public var wrappedValue: T
    public init(wrappedValue: T) {
        self.wrappedValue = wrappedValue
    }
    public var projectedValue: T {
        return wrappedValue
    }
}

extension AnyValueWrapper: CodAbleInetilizer {
    static public var defaultValue: T {
        get { return T(wrappedValue: T.defaultValue)}
        set {}
    }
}
