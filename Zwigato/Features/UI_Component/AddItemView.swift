//
//  AddItemView.swift
//  Zwigato
//
//  Created by Ashish Prajapati on 24/06/25.
//

import SwiftUI

struct AddItemView: View {
    
    @State var itemCount:Int = 0
    var width: CGFloat = 120
    var height: CGFloat = 40
    var onClick: ((_ updatedCount: Int)->Void)?
    
    var body: some View {
        VStack(alignment: .center){
            if itemCount == 0{
                Button {
                    itemCount += 1
                    onClick?(itemCount)
                } label: {
                    Text("ADD")
                        .foregroundStyle(.appGreen.opacity(0.7))
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding()
                }
                .buttonStyle(BorderlessButtonStyle())
                
                
            }else{
                
                HStack(alignment: .center, spacing: 0){
                    Spacer()
                    Button {
                        itemCount -= 1
                        onClick?(itemCount)
                    } label: {
                        Text("-")
                            .font(.system(size: 30))
                    }
                    .buttonStyle(BorderlessButtonStyle())
                    Spacer()
                    Text("\(itemCount)")
                        .font(.title2)
                    Spacer()
                    Button {
                        itemCount += 1
                        onClick?(itemCount)
                    } label: {
                        Text("+")
                            .font(.system(size: 24))
                    }
                    .buttonStyle(BorderlessButtonStyle())
                    Spacer()
                }
                .frame(maxHeight: .infinity, alignment: .center)
                .foregroundStyle(.appGreen.opacity(0.7))
                .fontWeight(.bold)
//                .padding()
                
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
    AddItemView()
}
