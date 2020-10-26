//
//  Distance.swift
//  SegControl
//
//  Created by Harry Sandhu on 2020-10-25.
//

import Foundation


struct Distance {
    static let kmPerMile = 1.60934
    
    var miles:Double
    var km:Double
    
    
    init(miles:Double) {
        self.miles = miles
        self.km = Distance.toKm(miles: miles)
    }
    init(km:Double){
        self.km = km
        self.miles = Distance.toMiles(km: km)
    }
    
    static func toKm(miles:Double) -> Double{
        return miles * kmPerMile
    }
    
    static func toMiles(km:Double) -> Double{
        return km / kmPerMile
    }
}
