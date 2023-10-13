//
//  String+DataTypeConversion.swift
//  Model
//
//  Created by Muhammad Ali on 05/10/2023.
//

import Foundation
extension String {
    func convert() -> Int? {
        return Int(self)
    }
    func convert() -> Double? {
        return Double(self)
    }
    func convert() -> Float? {
        return Float(self)
    }
    func convert() -> Bool? { 
        if let intValue: Int = self.convert(){
            return intValue != 0
        }
        var parsedValue = self.lowercased().replacingOccurrences(of: " ", with: "")

        if parsedValue == "yes"{
            parsedValue = "true"
        }
        if parsedValue == "no"{
            parsedValue = "false"
        }
        return Bool(parsedValue)
    }
}

