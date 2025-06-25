//
//  VerticalFeaturedRestaurantSection.swift
//  Zwigato
//
//  Created by Ashish Prajapati on 24/106/25.
//

import SwiftUI

struct RestaurantCardView: View {
    
    let modelFeaturedRestaurant: ModelRestaurant
    
    
    var body: some View {
        HStack(spacing: 18){
            
            restaurantImageView
                
            VStack(alignment: .leading){
                
                /// Restaurant Name
                Text(modelFeaturedRestaurant.name)
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundStyle(.black)
                
                /// Ratting and Time
                HStack{
                    Image(systemName: "star.fill")
                        .resizable()
                        .frame(width: 15, height: 15)
                        .foregroundStyle(.white)
                        .background(
                            Circle()
                                .fill(.appGreen)
                                .frame(width: 26, height: 26)
                        )
                        
                    Text("\(modelFeaturedRestaurant.rating, specifier: "%.1f")")
                        .font(.headline)
                        .fontWeight(.bold)
                    
                    Text("•")
                        .font(.title3)
                        .fontWeight(.bold)
                    
                    Text("\(modelFeaturedRestaurant.deliveryTime)")
                        .font(.headline)
                        .fontWeight(.bold)
                    
                    
                    
                }
                .foregroundStyle(.black)
                
                /// Restaurant Cuisine
                Text("\(modelFeaturedRestaurant.cuisine)")
                    .font(.headline)
                    .fontWeight(.medium)
                    .lineLimit(1)
                    .foregroundStyle(.black.opacity(0.5))
                
                /// Restaurant Location
                Text("\(modelFeaturedRestaurant.location)")
                    .font(.headline)
                    .fontWeight(.medium)
                    .foregroundStyle(.black.opacity(0.5))
                
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)

    }
    
    var restaurantImageView: some View{
        Image(modelFeaturedRestaurant.imageName)
            .resizable()
            .frame(width: 145, height: 170)
            .cornerRadius(22)
            .overlay(content: {
                RoundedRectangle(cornerRadius: 22)
                    .fill(Color.black.opacity(0.18))
            })
            .overlay(alignment: .bottomLeading) {
                VStack(alignment:.leading, spacing:1){
                    Text(modelFeaturedRestaurant.deal)
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                    
                    Text("Applly Cuppons")
                        .font(.subheadline)
                        .fontWeight(.bold)
                        .foregroundStyle(.white.opacity(0.96))
                }
                .padding()
            }
            .shadow(
                color: .black.opacity(0.3), radius: 14,
                x: 0,
                y: 6
            )
        
    }
    
}

#Preview {
    NavigationView(content: {
        RestaurantCardView(modelFeaturedRestaurant:  ModelRestaurant(name: "BBC", imageName: "bbc", rating: 4.4, deliveryTime: "20-30 mins", cuisine: "Konkan, Chinese, Toandoor, Thai", deal: "₹50 OFF", location: "Borivali 7.3km", tagLine: "", description: ""))
    })
    
}
