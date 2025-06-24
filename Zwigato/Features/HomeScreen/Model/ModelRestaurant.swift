//
//  ModelRestaurant.swift
//  SwiggUI
//
//  Created by Ashish Prajapati on 24/12/24.
//

import Foundation


struct ModelRestaurant: Identifiable {
    let id = UUID()
    let name: String
    let imageName: String
    let rating: Double
    let deliveryTime: String
    let cuisine: String
    let deal:String
    let location: String
    let tagLine: String
    let description: String
}
