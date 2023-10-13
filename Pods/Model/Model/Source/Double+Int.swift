//
//  Double+CheckInt.swift
//  Model
//
//  Created by Muhammad Ali on 12/10/2023.
//

import Foundation
extension Double {
    func isInt() -> Bool {
        return floor(self) == self
    }
    func toInt() -> Int? {
        if isInt(){
            return Int(self)
        }else{
            return nil
        }
    }
}
