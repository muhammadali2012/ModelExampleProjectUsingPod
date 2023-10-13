//
//  KeyedDecodingContainer+decode.swift
//  PakWheels
//
//  Created by Muhammad Ali on 16/02/2023.
//  Copyright © 2023 Confiz Solutions. All rights reserved.
//

import Foundation
// theese functions are called on property wrappers from left to right , left wrapper will be the first.
extension KeyedDecodingContainer {
    
    public func decode<P>(_: DefaultValueWrapper<P>.Type, forKey key: Key) throws -> DefaultValueWrapper<P> where P: CodAbleInetilizer {
        if let value = try decodeIfPresent(DefaultValueWrapper<P>.self, forKey: key) {
            return value
        } else {
            return DefaultValueWrapper(wrappedValue: P(wrappedValue: P.defaultValue))
        }
    }
    
    public func decode<P>(_: AnyValueWrapper<P>.Type, forKey key: Key) throws -> AnyValueWrapper<P> where P: CodAbleInetilizer {
        
        if let value = try? decodeIfPresent(AnyValueWrapper<P>.self, forKey: key) {
            return value
        }
        // to convert into any type
        var valueAsString = String()
        if let valueDouble = try? decodeIfPresent(Double.self, forKey: key) {
            if let valueInt = valueDouble.toInt() {
                valueAsString = valueInt.description
            }else{
                valueAsString = valueDouble.description
            }
        }
        if let valueBool = try? decodeIfPresent(Bool.self, forKey: key){
            valueAsString = valueBool.description
        }
        if let valueString = try? decodeIfPresent(String.self, forKey: key){
            valueAsString = valueString
        }
        if P.defaultValue is String, let wraped = valueAsString as? P.wrapValueAssociatedType {
            return AnyValueWrapper(wrappedValue: P(wrappedValue: wraped))
        }
        if P.defaultValue is Int, let value: Int = valueAsString.convert(), let wraped = value as? P.wrapValueAssociatedType {
            return AnyValueWrapper(wrappedValue: P(wrappedValue: wraped))
        }
        if P.defaultValue is Double, let value: Double = valueAsString.convert(), let wraped = value as? P.wrapValueAssociatedType {
            return AnyValueWrapper(wrappedValue: P(wrappedValue: wraped))
        }
        if P.defaultValue is Bool, let value: Bool = valueAsString.convert(), let wraped = value as? P.wrapValueAssociatedType {
            return AnyValueWrapper(wrappedValue: P(wrappedValue: wraped))
        }
        
        return AnyValueWrapper(wrappedValue: P(wrappedValue: P.defaultValue))
    }
    
}
