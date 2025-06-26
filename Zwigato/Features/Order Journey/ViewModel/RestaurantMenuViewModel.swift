//
//  RestaurantMenuViewModel.swift
//  Zwigato
//
//  Created by Ashish Prajapati on 24/06/25.
//

import Foundation

class RestaurantMenuViewModel: ObservableObject{
    
    
    @Published var isPresentingDetailView: Bool = false
    @Published var onTapCellIndex: Int = 0
    @Published var arrItemAddedToCart:[ModelRestaurant.ModelMenuItem] = []
    @Published var arrMenuItems:[ModelRestaurant.ModelMenuItem] = []
    
    
    init(arrMenuItems:[ModelRestaurant.ModelMenuItem]) {
        self.arrMenuItems = arrMenuItems
    }
    
    
    func getMenuItemQuantity(item: ModelRestaurant.ModelMenuItem) -> Int{
        arrItemAddedToCart.first(where: ({$0.id == item.id}))?.quantity ?? 0
    }
    
    func addItemToCart(item: ModelRestaurant.ModelMenuItem){
        
        if let index = arrItemAddedToCart.firstIndex(where: ({$0.id == item.id})){
            let itemPrice = arrItemAddedToCart[index].price
            arrItemAddedToCart[index].quantity += 1
            arrItemAddedToCart[index].perQuantityPrice += itemPrice
            
        }else{
            var menuItem = item
            menuItem.quantity = 1
            menuItem.perQuantityPrice = item.price
            arrItemAddedToCart.append(menuItem)
        }
        
        
    }
    
    
    func deleteItemFromCart(item: ModelRestaurant.ModelMenuItem){
        
        if let index = arrItemAddedToCart.firstIndex(where: ({$0.id == item.id})){
            
            if arrItemAddedToCart[index].quantity > 1{
                let itemPrice = arrItemAddedToCart[index].price
                arrItemAddedToCart[index].quantity -= 1
                arrItemAddedToCart[index].perQuantityPrice -= itemPrice
                
                
            }else{
                arrItemAddedToCart.remove(at: index)
            }
        }
        
        
    }
    
    func getTotalItemQuantityInCart() -> Int{
        arrItemAddedToCart.reduce(0, ({$0 + $1.quantity}))
    }
    
    func getTotalItemPriceInCart() -> Int{
        arrItemAddedToCart.reduce(0, ({$0 + $1.perQuantityPrice}))
    }
}
