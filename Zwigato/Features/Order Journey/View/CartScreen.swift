//
//  CartScreen.swift
//  Zwigato
//
//  Created by Ashish Prajapati on 26/06/25.
//

import SwiftUI
import Combine

struct CartScreen: View {
    
    @EnvironmentObject var vmRestaurantMenu: RestaurantMenuViewModel
    @Environment(\.dismiss) var dismiss

    var body: some View {
        
        VStack{
            
            List{
                
                ForEach(
                    Array(vmRestaurantMenu.arrItemAddedToCart.enumerated()),
                    id: \.offset) { (index, item) in
                        CartCellView(
                            item: item,
                            itemCount: vmRestaurantMenu
                                .getMenuItemQuantity(item: item),
                            onIncreaseQuantity: {
                                vmRestaurantMenu.addItemToCart(item: item)
                            },
                            onDecreaseQuantity: {
                                vmRestaurantMenu.deleteItemFromCart(item: item)
                            }
                        )
                            .padding(.vertical, 4)
                    }
                
            }
            .listStyle(.plain)
            
            HStack(){
                VStack(alignment: .leading){
                    Text("₹\(vmRestaurantMenu.getTotalItemPriceInCart())")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundStyle(.black)
                    
                    Text("Total Price")
                        .font(.subheadline)
                        .fontWeight(.bold)
                        .foregroundStyle(.black.opacity(0.96))
                }
                
                Spacer()
                
                
                
                
                NavigationLink (destination: {
                        CheckOutScreen()
                }, label: {
                    
                    HStack{
                        Text("Ceck Out")
                            .font(.headline)
                            .fontWeight(.bold)
                        
                        Image(systemName: "chevron.compact.right")
                            .resizable()
                            .frame(width: 9, height: 14)
                            .font(.headline)
                            .fontWeight(.medium)
                    }
                    .foregroundStyle(.white)
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .fill(AppHelper.appTheme)
                    )
                    .opacity( vmRestaurantMenu.getTotalItemPriceInCart() != 0 ? 1.0 : 0.59)
                })
                .disabled(vmRestaurantMenu.getTotalItemPriceInCart() == 0)
                
            }
            .padding()
            .padding(.horizontal, 10)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(
                Rectangle()
                    .fill(.white)
                    .shadow(
                        color: .black.opacity(0.09), radius: 14,
                        x: 0,
                        y: -6
                    )
                    .ignoresSafeArea()
            )
        }
        .navigationBarBackButtonHidden(true)
        .navigationTitle("Cart")
        .toolbarBackground(.white, for: .navigationBar)
        .toolbar {
            ToolbarItem(placement: .topBarLeading){
                Button(action: {
                    dismiss()
                }, label: {
                    VStack{
                        Image(systemName: "chevron.compact.left")
                            .resizable()
                            .frame(width: 11, height: 16)
                            .fontWeight(.light)
                            .foregroundStyle(.black.opacity(0.7))
                            .background(
                                Circle()
                                    .fill(.white)
                                    .frame(width: 36, height: 36)
                            )
                            .shadow(
                                color: .white.opacity(0.6), radius: 14,
                                x: 0,
                                y: -6
                            )
                    }
                    .padding(.horizontal)
                })
            }
        }
        
        
    }
}

#Preview {
    NavigationStack{
        CartScreen()
    }
    
}
