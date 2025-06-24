//
//  RestaurantMenuScreen.swift
//  Zwigato
//
//  Created by Ashish Prajapati on 24/06/25.
//

import SwiftUI

struct RestaurantMenuScreen: View {
    
    @StateObject var vmRestaurantMenu = RestaurantMenuViewModel()
    
    var body: some View {
        VStack{
            
            List {
                ForEach(
                    Array(
                        vmRestaurantMenu.sampleFeaturedRestaurants.enumerated()
                    ),
                    id: \.offset
                ) { index, item in
                    
                    MenuCardView(modelFeaturedRestaurant: item)
                        .background(Color.white.opacity(0.0000001))
                        .padding(.vertical, 14)
                        .onTapGesture {
                            vmRestaurantMenu.onTapCellIndex = index
                            vmRestaurantMenu.isPresentingDetailView = true
                        }
                }
            }
            .listStyle(.plain)
            
        }
        .sheet(isPresented: $vmRestaurantMenu.isPresentingDetailView, content: { DetailView( selectedRestaurant: vmRestaurantMenu .sampleFeaturedRestaurants[vmRestaurantMenu.onTapCellIndex] )
        })
        .environmentObject(vmRestaurantMenu)
        
        
    }
}

#Preview {
    RestaurantMenuScreen()
}
