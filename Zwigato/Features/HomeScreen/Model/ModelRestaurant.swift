//
//  ModelRestaurant.swift
//  Zwigato
//
//  Created by Ashish Prajapati on 24/106/25.
//

import Foundation


struct ModelRestaurant: Identifiable {
    var id = UUID()
    var name: String
    var imageName: String
    var rating: Double
    var deliveryTime: String
    var cuisine: String
    var deal:String
    var location: String
    var tagLine: String
    var description: String
    var quantity: Int = 0
}
