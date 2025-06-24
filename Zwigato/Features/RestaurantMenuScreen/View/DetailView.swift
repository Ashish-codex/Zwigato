//
//  DetailView.swift
//  SwiggUI
//
//  Created by Ashish Prajapati on 25/12/24.
//

import SwiftUI

struct DetailView: View {
    
    let selectedRestaurant: ModelRestaurant
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var vmRestaurantMenu: RestaurantMenuViewModel
    
    var body: some View {
        VStack{
            ScrollView {
                
                VStack(alignment: .leading){
            
                    dishImageView
                    
                    VStack(alignment: .leading){
                        
                        HStack(alignment: .top, spacing: 40){
                            VStack(alignment: .leading){
                                
                                Text("\(selectedRestaurant.name): \(selectedRestaurant.tagLine)")
                                    .lineLimit(2)
                                    .font(.title3)
                                    .fontWeight(.bold)
                                
                                Spacer(minLength:8)
                                
                                Text(selectedRestaurant.deal)
                                    .font(.system(size: 18))
                                    .fontWeight(.bold)
                                    .foregroundStyle(.black)
                            }
                            
                            
                            AddItemView(itemCount: 0) { count in
                                
                            }
                            .frame(maxWidth: .infinity, alignment: .trailing)
                        }
                        
                        Spacer(minLength: 15)
                        
                        HStack{
                            Text("🍽️")
                            Text("\(selectedRestaurant.cuisine)")
                                .font(.headline)
                                .fontWeight(.medium)
                                .foregroundStyle(.black.opacity(0.8))
                        }
                        
                        Spacer(minLength: 6)
                        
                        HStack{
                            Text("📍")
                            Text("\(selectedRestaurant.location)")
                                .font(.headline)
                                .fontWeight(.medium)
                                .foregroundStyle(.black.opacity(0.5))
                        }
                        
                        
                        
                        Spacer(minLength: 20)
                        
                        Text("\(selectedRestaurant.description)")
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
            
//            HStack(){
//                VStack(alignment: .leading){
//                    Text(selectedRestaurant.deal)
//                        .font(.title2)
//                        .fontWeight(.bold)
//                        .foregroundStyle(.black)
//                    
//                    Text("Applly Cuppons")
//                        .font(.subheadline)
//                        .fontWeight(.bold)
//                        .foregroundStyle(.black.opacity(0.96))
//                }
//                
//                Spacer()
//                
//                Button(action: {}, label: {
//                    Text("Order Now")
//                        .font(.headline)
//                        .fontWeight(.bold)
//                        .foregroundStyle(.white)
//                        .padding()
//                        .background(
//                            RoundedRectangle(cornerRadius: 10)
//                                .fill(Color.appOragne)
//                        )
//                })
//                
//            }
//            .padding()
//            .padding(.horizontal, 10)
//            .frame(maxWidth: .infinity, alignment: .leading)
//            .background(
//                Rectangle()
//                    .fill(.white)
//                    .shadow(
//                        color: .black.opacity(0.09), radius: 14,
//                        x: 0,
//                        y: -6
//                    )
//                    .ignoresSafeArea()
//            )
            
            
            
        }
//        .navigationBarBackButtonHidden(true)
//        .toolbarBackground(.white, for: .navigationBar)
//        .toolbar {
//            ToolbarItem(placement: .topBarLeading){
//                Button(action: {
//                    presentationMode.wrappedValue.dismiss()
//                }, label: {
//                    VStack{
//                        Image(systemName: "chevron.compact.left")
//                            .resizable()
//                            .frame(width: 11, height: 16)
//                            .fontWeight(.light)
//                            .foregroundStyle(.black.opacity(0.7))
//                            .background(
//                                Circle()
//                                    .fill(.white)
//                                    .frame(width: 36, height: 36)
//                            )
////                            .offset(x: 25, y: 55)
//                            .shadow(
//                                color: .white.opacity(0.6), radius: 14,
//                                x: 0,
//                                y: -6
//                            )
//                    }
//                    .padding(.horizontal)
//                })
//            }
//        }
        
        
    }
    
    
    var dishImageView: some View{
        
        Image(selectedRestaurant.imageName)
            .resizable()
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
        DetailView(selectedRestaurant:  ModelRestaurant(name: "BBC", imageName: "bbc", rating: 4.4, deliveryTime: "20-30 mins", cuisine: "Konkan, Chinese, Toandoor, Thai", deal: "₹50 OFF", location: "Borivali 7.3km", tagLine: "There's always a reason to celebrate", description: "Hands down the best biryani place in Mumbai! 🥰 I am a hardcore biryani lover and have had chicken biryani all over Mumbai but didn`t find any place serving such delicious biryani like BBC. Their kebabs are also very tasty and mouth watering.. totally worth the prices. And the ambience is also nice and calm. During weekends it`s a little crowded but I assure that the food is worth the wait 😋Hands down the best biryani place in Mumbai! 🥰 I am a hardcore biryani lover and have had chicken biryani all over Mumbai but didn`t find any place serving such delicious biryani like BBC. Their kebabs are also very tasty and mouth watering.. totally worth the prices. And the ambience is also nice and calm. During weekends it`s a little crowded but I assure that the food is worth the wait 😋Hands down the best biryani place in Mumbai! 🥰 I am a hardcore biryani lover and have had chicken biryani all over Mumbai but didn`t find any place serving such delicious biryani like BBC. Their kebabs are also very tasty and mouth watering.. totally worth the prices. And the ambience is also nice and calm. During weekends it`s a little crowded but I assure that the food is worth the wait 😋Hands down the best biryani place in Mumbai! 🥰 I am a hardcore biryani lover and have had chicken biryani all over Mumbai but didn`t find any place serving such delicious biryani like BBC. Their kebabs are also very tasty and mouth watering.. totally worth the prices. And the ambience is also nice and calm. During weekends it`s a little crowded but I assure that the food is worth the wait 😋"))
    }
    
    
}
