//
//  MenuCardView.swift
//  Zwigato
//
//  Created by Ashish Prajapati on 24/06/25.
//

import SwiftUI

struct MenuCardView: View {
    
    let modelFeaturedRestaurant: ModelRestaurant
    
    
    var body: some View {
        HStack(alignment: .top, spacing: 18){
            
            VStack(alignment: .leading, spacing: 12){
                
                /// Restaurant Name
                Text(modelFeaturedRestaurant.name)
                    .lineLimit(2)
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundStyle(.black)
                
                
                
                /// Ratting and Price
                VStack(alignment:.leading, spacing: 2){
                    HStack{
                        Image(systemName: "star.fill")
                            .resizable()
                            .frame(width: 15, height: 15)
                            .foregroundStyle(.appGreen.opacity(0.8))
                            
                        Text("\(modelFeaturedRestaurant.rating, specifier: "%.1f")")
                            .font(.headline)
                            .fontWeight(.bold)

                    }
                    .foregroundStyle(.black)
                    
                    Text("₹199")
                        .font(.system(size: 26))
                        .fontWeight(.bold)
                        .foregroundStyle(.black)
                        .padding(.top, 1)
                    
                }
                
                
                /// Restaurant Cuisine and Location
                VStack(alignment:.leading, spacing: 2){
                    HStack{
                        Text("🍽️")
                        Text("\(modelFeaturedRestaurant.cuisine)")
                            .font(.headline)
                            .fontWeight(.medium)
                            .lineLimit(1)
                            .foregroundStyle(.black.opacity(0.5))
                    }
                    
                    HStack{
                        Text("📍")
                        Text("\(modelFeaturedRestaurant.location)")
                            .font(.headline)
                            .fontWeight(.medium)
                            .foregroundStyle(.black.opacity(0.5))
                    }
                }
                

                
                
                
            }
            .padding(.top, 18)
            
            restaurantImageView
        }
        .frame(maxWidth: .infinity, alignment: .leading)

    }
    
    var restaurantImageView: some View{
        Image(modelFeaturedRestaurant.imageName)
            .resizable()
            .frame(width: 145, height: 140)
            .cornerRadius(22)
            .overlay(alignment: .bottom) {
                AddItemView(width: 110)
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
    MenuCardView(modelFeaturedRestaurant: ModelRestaurant(name: "BBC", imageName: "bbc", rating: 4.4, deliveryTime: "20-30 mins", cuisine: "Konkan, Chinese, Toandoor, Thai", deal: "₹50 OFF", location: "Borivali 7.3km", tagLine: "", description: ""))
        .padding()
}
