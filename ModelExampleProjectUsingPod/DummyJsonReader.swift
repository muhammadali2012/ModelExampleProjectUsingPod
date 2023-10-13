//
//  DummyJsonReader.swift
//  ModelExamplePropject
//
//  Created by Muhammad Ali on 18/09/2023.
//

import Foundation
func loadDummyJson() -> Cars?{
    if let path = Bundle.main.path(forResource: "Dummy", ofType: "json") {
        do {
            let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
            let decoder = JSONDecoder()
            let cars = try decoder.decode(Cars.self, from: data)
            return cars
        } catch {
               // handle error
              print("un able to show file")
          }
    }
    return nil
}
