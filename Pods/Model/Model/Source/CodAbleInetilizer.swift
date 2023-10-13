//
//  CodAbleInetilizer.swift
//  PakWheels
//
//  Created by Muhammad Ali on 16/02/2023.
//  Copyright © 2023 Confiz Solutions. All rights reserved.
//

import Foundation

public protocol CodAbleInetilizer: Codable {
    associatedtype wrapValueAssociatedType: Codable
    var wrappedValue: wrapValueAssociatedType { get set }
    init(wrappedValue: wrapValueAssociatedType)
    static var defaultValue: wrapValueAssociatedType { get set }
}

extension CodAbleInetilizer {
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let wrappedValueToSave = try container.decode(wrapValueAssociatedType.self)
        self.init(wrappedValue: wrappedValueToSave)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(self.wrappedValue)
    }
}
