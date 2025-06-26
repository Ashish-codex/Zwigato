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
    
    var arrRestaurants: [ModelRestaurant] = []
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        arrRestaurants = AppHelper.arrRestaurantWithMenuItems
        addSubscriber()
    }
    
    
    private func addSubscriber(){
        $searchItem
            .sink { [weak self] item in
            
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
