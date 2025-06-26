//
//  AddItemView.swift
//  Zwigato
//
//  Created by Ashish Prajapati on 24/06/25.
//

import SwiftUI

struct AddItemView: View {
    
    var itemCount:Int
    var width: CGFloat = 120
    var height: CGFloat = 40
    var onIncreaseQuantity: (()->Void)
    var onDecreaseQuantity: (()->Void)
    
    var body: some View {
        VStack(alignment: .center){
            if itemCount == 0{
                Button {
                    onIncreaseQuantity()
                } label: {
                    Text("ADD")
                        .foregroundStyle(.appGreen.opacity(0.7))
                        .font(.subheadline)
                        .fontWeight(.bold)
                        .padding()
                }
                .buttonStyle(BorderlessButtonStyle())
                
                
            }else{
                
                HStack(alignment: .center, spacing: 0){
//                    Spacer()
                    Button {
                        onDecreaseQuantity()
                    } label: {
                        ZStack{
                            Image(systemName: "minus")
                                .font(.system(size: 12))
                                .fontWeight(.bold)
                            Image(systemName: "plus")
                                .font(.system(size: 12))
                                .opacity(0.0)
                        }
                        
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .buttonStyle(BorderlessButtonStyle())
                    .background(.yellow.opacity(0.001))
                    
                    Spacer()
                    
                    Text("\(itemCount)")
                        .font(.subheadline)
                        .fontWeight(.bold)
                        .padding(-4)
                        .lineLimit(1)
                    
                    Spacer()
                    
                    Button {
                        onIncreaseQuantity()
                    } label: {
                        Image(systemName: "plus")
                            .font(.system(size: 12))
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .buttonStyle(BorderlessButtonStyle())
                    .contentShape(Rectangle())
                    .background(.yellow.opacity(0.001))
                    
//                    Spacer()
                }
                .frame(maxHeight: .infinity, alignment: .center)
                .foregroundStyle(.appGreen.opacity(0.7))
                .fontWeight(.bold)
                
            }
            
            
        }
        .frame(width: width, height: height)
        .overlay {
            RoundedRectangle(cornerRadius: 8)
                .stroke(Color.black.opacity(0.3), lineWidth: 0.8) }
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 8))
        .shadow(
            color: .black.opacity(0.1), radius: 14,
            x: 0,
            y: 1
        )
        
        
    }
}

#Preview {
    AddItemView(itemCount: 1, onIncreaseQuantity: {
        
    }, onDecreaseQuantity: {
        
    })
}
