//
//  MenuCardView.swift
//  Zwigato
//
//  Created by Ashish Prajapati on 24/06/25.
//

import SwiftUI

struct MenuCellView: View {
    
    let menuItem: ModelRestaurant.ModelMenuItem
    var itemCount:Int
    var onIncreaseQuantity: (()->Void)
    var onDecreaseQuantity: (()->Void)
    
    
    var body: some View {
        HStack(alignment: .top, spacing: 18){
            
            VStack(alignment: .leading, spacing: 12){
                
                /// Restaurant Name
                Text(menuItem.name)
                    .lineLimit(2)
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundStyle(.black)
                
                
                
                /// Ratting and Price
                VStack(alignment:.leading, spacing: 2){
                    HStack{
                        Image(systemName: "star.fill")
                            .resizable()
                            .frame(width: 12, height: 12)
                            .foregroundStyle(.appGreen.opacity(0.8))
                            
                        Text("\(menuItem.rating, specifier: "%.1f")")
                            .font(.subheadline)
                            .fontWeight(.bold)

                    }
                    .foregroundStyle(.black)
                    
                    Text("₹\(menuItem.price)")
                        .font(.system(size: 22))
                        .fontWeight(.bold)
                        .foregroundStyle(.black)
                        .padding(.top, 1)
                    
                }
                
                
                /// Restaurant Cuisine and Location
                VStack(alignment:.leading, spacing: 2){
                    HStack{
                        Text("🍽️")
                        Text("\(menuItem.ingredients)")
                            .font(.subheadline)
                            .fontWeight(.medium)
                            .lineLimit(1)
                            .foregroundStyle(.black.opacity(0.5))
                    }
                    
//                    HStack{
//                        Text("📍")
//                        Text("\(menuItem.location)")
//                            .font(.headline)
//                            .fontWeight(.medium)
//                            .foregroundStyle(.black.opacity(0.5))
//                    }
                }
                

                
                
                
            }
            .padding(.top, 18)
            
            menuImageView
        }
        .frame(maxWidth: .infinity, alignment: .leading)

    }
    
    var menuImageView: some View{
        ImageLoaderView(urlString: menuItem.imageName)
            .frame(width: 145, height: 140)
            .cornerRadius(22)
            .overlay(alignment: .bottom) {
                AddItemView(
                    itemCount: itemCount,
                    width: 110,
                    height: 35,
                    onIncreaseQuantity: {
                        onIncreaseQuantity()
                    },
                    onDecreaseQuantity: {
                        onDecreaseQuantity()
                    }
                )
                .offset(y: 20)
                .shadow(
                    color: .black.opacity(0.2), radius: 14,
                    x: 0,
                    y: 6
                )

            }
        
        
    }
}

#Preview {
    MenuCellView(
        menuItem: AppHelper.arrRestaurantWithMenuItems.first!.menuItem.first!,
        itemCount: 0,
        onIncreaseQuantity: {},
        onDecreaseQuantity: {}
    )
        .padding()
}
