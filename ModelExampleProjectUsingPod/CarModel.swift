//
//  CarModel.swift
//  ModelExamplePropject
//
//  Created by Muhammad Ali on 18/09/2023.
//

import Foundation
import Model
struct Cars: Codable { //certifiedCars,FeatureAds, sellItForMeCars
    var price: Int?
    var urlSlug : String?
    var altTitle: String
    @AnyValueWrapper @DefaultStringEmpty var title: String
    var city : String
    @DefaultValueWrapper @FullStringToUrl var pictureUrl: String?
    let modelYear, mileage: Int
    let engineType :  String
    let inspectionRating: Double?
}
