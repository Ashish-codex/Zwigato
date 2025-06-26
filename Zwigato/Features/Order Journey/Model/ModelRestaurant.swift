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
    var location: String
    var deal: String
    var menuItem: [ModelMenuItem] = []
    
    struct ModelMenuItem: Identifiable{
        var id = UUID()
        var name: String
        var imageName: String
        var rating: Double
        var ingredients: String
        var description: String
        var quantity: Int = 0
        var price: Int
        var perQuantityPrice: Int = 0
        
    }
}
