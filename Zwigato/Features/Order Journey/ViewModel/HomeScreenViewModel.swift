//
//  HomeScreenViewModel.swift
//  Zwigato
//
//  Created by Ashish Prajapati on 24/06/25.
//

import Foundation
import Combine

class HomeScreenViewModel: ObservableObject {
    
    @Published var searchItem = ""
    let user = ModelUser(name: "Ashish Prajapati", adderess: "Society 330, Room No. 13, Sector 65, Noida")
//    var sampleFeaturedRestaurants = [
//        ModelRestaurant(
//            name: "McDonald's",
//            imageName: <#T##String#>,
//            rating: 4.5,
//            deliveryTime: "25-30 mins",
//            cuisine: "Burgers, Beverages, Cafe, Desserts",
//            location: "Borivali",
//            menuItem: [
//                ModelRestaurant.ModelMenuItem(
//                        name:"Crispy Veggie Burger.",
//                        imageName:"https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,h_600/FOOD_CATALOG/IMAGES/CMS/2024/12/12/7a3244bf-3091-4ae6-92e3-13be841a753e_b21f7a05-24b3-43f8-a592-beb23e6b69fa.png",
//                        rating: 4.4,
//                        ingredients: "lettuce, Tomato, Onion, Pickles, Cheese, Ketchup, Mustard",
//                        description: "A flavorful patty made with a blend of 7 premium veggies, topped with zesty cocktail sauce, all served between soft, premium buns. Perfectly satisfying and full of flavor.",
//                        price: 200
//                    ),
//                
//                ModelRestaurant.ModelMenuItem(
//                        name:"Crispy Veggie Burger.",
//                        imageName:"https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,h_600/FOOD_CATALOG/IMAGES/CMS/2024/12/12/7a3244bf-3091-4ae6-92e3-13be841a753e_b21f7a05-24b3-43f8-a592-beb23e6b69fa.png",
//                        rating: 4.4,
//                        ingredients: "lettuce, Tomato, Onion, Pickles, Cheese, Ketchup, Mustard",
//                        description: "A flavorful patty made with a blend of 7 premium veggies, topped with zesty cocktail sauce, all served between soft, premium buns. Perfectly satisfying and full of flavor.",
//                        price: 200
//                    )
//            ]
//        )
//    ]
    
    
    var arrRestaurants: [ModelRestaurant] = []
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        arrRestaurants = AppHelper.arrRestaurantWithMenuItems
        addSubscriber()
    }
    
    
    private func addSubscriber(){
        $searchItem.sink { [weak self] item in
            
            guard !item.isEmpty else{
                self?.arrRestaurants = AppHelper.arrRestaurantWithMenuItems
                return
            }
            
            self?.arrRestaurants = self?.arrRestaurants
                .filter(({$0.name.localizedCaseInsensitiveContains(item)})) ?? []
        }
        .store(in: &cancellables)
    }
}
