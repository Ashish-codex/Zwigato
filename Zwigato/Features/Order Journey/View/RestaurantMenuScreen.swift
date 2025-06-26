//
//  RestaurantMenuScreen.swift
//  Zwigato
//
//  Created by Ashish Prajapati on 24/06/25.
//

import SwiftUI

struct RestaurantMenuScreen: View {
    
    @StateObject var vmRestaurantMenu: RestaurantMenuViewModel
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack(){
            
            List {
                ForEach(
                    Array(
                        vmRestaurantMenu.arrMenuItems.enumerated()
                    ),
                    id: \.offset
                ) { index, item in
                    
                    MenuCellView(menuItem: item)
                        .background(Color.white.opacity(0.0000001))
                        .padding(.vertical, 14)
                        .onTapGesture {
                            vmRestaurantMenu.onTapCellIndex = index
                            vmRestaurantMenu.isPresentingDetailView = true
                        }
                }
            }
            .listStyle(.plain)
            
            if !vmRestaurantMenu.arrItemAddedToCart.isEmpty{
                
                NavigationLink {
                    CartScreen()
                        .environmentObject(vmRestaurantMenu)

                    
                } label: {
                    VStack{
                        VStack{
                            VStack{
                                Text("Deal of the Day unlocked!")
                            }
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.horizontal)
                            .padding(.vertical, 6)
                            .background(.cartBackgroundDark)
                            .font(.subheadline)
                            
                            HStack(alignment: .top){
                                Text(
                                    "\(vmRestaurantMenu.getTotalItemQuantityInCart()) Item added"
                                )
                                Spacer()
                                HStack(spacing:1){
                                    Text("View Cart ")
                                    Image(systemName: "chevron.right")
                                }
                            }
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.horizontal)
                            .padding(.bottom, 10)
                            .font(.headline)
                            .background(.cartBackgroundLight)
                        }
                        .background(.cartBackgroundLight)
                        .foregroundStyle(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                        .padding(.horizontal, 14)
                        .padding(.vertical, 9)
                        
                    }
                    .padding(.bottom, 20)
                    .background(.white)
                }

                
                
            }
            
            
        }
        .sheet(
            isPresented: $vmRestaurantMenu.isPresentingDetailView,
            content: { MenuDetailScreen(
                menuItem:vmRestaurantMenu.arrMenuItems[vmRestaurantMenu.onTapCellIndex] )
        })
        .navigationBarBackButtonHidden(true)
        .navigationTitle("Menu")
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
//                            .offset(x: 25, y: 55)
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
        .environmentObject(vmRestaurantMenu)
        .ignoresSafeArea(.container, edges: .bottom)
        
        
        
    }
}

#Preview {
    NavigationStack{
        RestaurantMenuScreen(
            vmRestaurantMenu: RestaurantMenuViewModel(arrMenuItems: [])
        )
    }
    
}
