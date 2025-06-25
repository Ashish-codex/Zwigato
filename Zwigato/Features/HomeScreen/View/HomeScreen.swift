//
//  HomeScreen.swift
//  Zwigato
//
//  Created by Ashish Prajapati on 24/06/25.
//

import SwiftUI

struct HomeScreen: View {
    
    @StateObject var vmHome = HomeScreenViewModel()
    
    var body: some View {
        VStack{
            
            stickyHeaderView
            
            ScrollView {
                VStack{
                    
                    ForEach(vmHome.sampleFeaturedRestaurants) { item in
                        
                        NavigationLink(destination: RestaurantMenuScreen() ) {
                            
                            RestaurantCardView(modelFeaturedRestaurant: item)
                                .padding(.vertical)
                                .padding(.horizontal)
                        }
                        
                        
                            
                    }
                    
                }
            }
        }
        
        
        
        
    }

    
    
    //MARK: - This Sticky Header on top of view
    var stickyHeaderView: some View{
        VStack(spacing: 10) {
            
            HStack{
                VStack(alignment: .leading){
                    HStack{
                        Image(systemName: "house.fill")
                            .resizable()
                            .frame(width: 18, height: 16)
                            .foregroundStyle(.appOragne)
                        
                        Text("Home")
                            .font(.headline)
                            .fontWeight(.bold)
                        
                        Image(systemName: "chevron.compact.down")
                            .resizable()
                            .frame(width: 16, height: 10)
                            .foregroundStyle(.black.opacity(0.4))
                    }
                    
                    Text("\(vmHome.user.adderess)")
                        .font(.subheadline)
                        .fontWeight(.medium)
                        .foregroundStyle(.black.opacity(0.6))
                        .lineLimit(1)
                        
                }
                .padding(.horizontal)
                
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .foregroundStyle(.black.opacity(0.6))
            }
            .padding(.horizontal)
            
            
            
            SearchBar(searchText: $vmHome.searchItem, placeHolderTex: "Search for 'Biryani'")
                .padding(.horizontal)
                .padding(.bottom, 10)
                .shadow(
                    color: .black.opacity(0.1), radius: 14,
                    x: 0,
                    y: 6
                )
        }
        .background(Color.white)
        
    }
    
    
    
}

#Preview {
    NavigationStack{
        HomeScreen()
    }
    
}
