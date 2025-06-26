//
//  DetailView.swift
//  Zwigato
//
//  Created by Ashish Prajapati on 24/106/25.
//

import SwiftUI

struct MenuDetailScreen: View {
    
    @EnvironmentObject var vmRestaurantMenu: RestaurantMenuViewModel
    let menuItem: ModelRestaurant.ModelMenuItem
    
    var body: some View {
        VStack{
            ScrollView {
                
                VStack(alignment: .leading){
            
                    menuImageView
                    
                    VStack(alignment: .leading){
                        
                        HStack(alignment: .top, spacing: 40){
                            VStack(alignment: .leading){
                                
                                Text("\(menuItem.name)")
                                    .lineLimit(2)
                                    .font(.title3)
                                    .fontWeight(.bold)
                                
                                Spacer(minLength:8)
                                
                                Text("@ ₹\(menuItem.price)")
                                    .font(.system(size: 18))
                                    .fontWeight(.bold)
                                    .foregroundStyle(.black)
                            }
                            
                            AddItemView(
                                itemCount: vmRestaurantMenu .getMenuItemQuantity(item: menuItem),
                                width: 100,
                                height: 35,
                                onIncreaseQuantity: {
                                    vmRestaurantMenu
                                        .addItemToCart(item: menuItem)
                                },
                                onDecreaseQuantity: {
                                    vmRestaurantMenu
                                        .deleteItemFromCart(item: menuItem)
                                }
                            )
                            .frame(maxWidth: .infinity, alignment: .trailing)
                            
                            .frame(maxWidth: .infinity, alignment: .trailing)
                        }
                        
                        Spacer(minLength: 15)
                        
                        HStack{
                            Text("🍽️")
                            Text("\(menuItem.ingredients)")
                                .font(.headline)
                                .fontWeight(.medium)
                                .foregroundStyle(.black.opacity(0.8))
                        }
                        
                        Spacer(minLength: 6)
                        
//                        HStack{
//                            Text("📍")
//                            Text("\(selectedRestaurant.location)")
//                                .font(.headline)
//                                .fontWeight(.medium)
//                                .foregroundStyle(.black.opacity(0.5))
//                        }
//                        
                        
                        
                        Spacer(minLength: 20)
                        
                        Text("\(menuItem.description)")
                            .font(.headline)
                            .fontWeight(.medium)
                            .foregroundStyle(.black.opacity(0.5))
                        
                    }
                    .padding()
                }
                .overlay(alignment: .topTrailing) {
                    VStack{
                        Button {
                            
                            vmRestaurantMenu.isPresentingDetailView = false
                            
                        } label: {
                            Image(systemName: "xmark")
                                .resizable()
                                .frame(width: 16, height: 16)
                                .fontWeight(.bold)
                                .font(.caption)
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
                        .offset(x: 0, y: 20)
                        .padding()

                        
                        
                    }
                    .padding(.horizontal, 16)
                }
            }
            .ignoresSafeArea()
        }
        
    }
    
    
    var menuImageView: some View{
        
        ImageLoaderView(urlString: menuItem.imageName)
            .frame(maxWidth: .infinity)
            .frame(height: 350)
            .overlay(content: {
                Rectangle()
                    .fill(Color.black.opacity(0.2))
            })
    }
}

#Preview {
    
    NavigationStack{
        MenuDetailScreen(
            menuItem:  AppHelper.arrRestaurantWithMenuItems.first!.menuItem.first!
        )
    }
    
    
}
