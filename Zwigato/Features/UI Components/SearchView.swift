//
//  SearchView.swift
//  Zwigato
//
//  Created by Ashish Prajapati on 24/106/25.
//

import SwiftUI

struct SearchBar: View {
    
    @Binding var searchText:String
    let placeHolderTex:String
    
    var body: some View {
        HStack{
            
            TextField(text: $searchText) {
                Text(placeHolderTex)
                    .font(.callout)
                    .foregroundStyle(.black.opacity(0.45))
            }
            .foregroundStyle(.black.opacity(0.5))
            .padding(.leading, 8)
            
            
            if(searchText.isEmpty){
                Image(systemName: "magnifyingglass")
                    .resizable()
                    .frame(width: 18, height: 18)
                    .foregroundStyle(.black.opacity(0.5))
                    
                
            }else{
                Image(systemName: "xmark.circle.fill")
                    .resizable()
                    .frame(width: 18, height: 18)
                    .foregroundStyle(.black.opacity(0.5))
                    .onTapGesture {
                        searchText = ""
                        UIApplication.shared.endEditingKeyboard() 
                    }
            }
            
            divider
            
            Image(systemName: "mic.fill")
                .resizable()
                .frame(width: 13, height: 20)
                .foregroundStyle(AppHelper.appTheme)
                .padding(.trailing, 6)
            
            
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.white)
                .stroke(Color.black.opacity(0.2), lineWidth: 0.8)
        )
        
    }
    
    
    var divider: some View{
        VStack{
            Rectangle()
                .frame(width: 1, height: 22)
                .foregroundStyle(.black.opacity(0.5))
        }
        .padding(.horizontal, 4)
    }
}

#Preview {
    
    SearchBar(searchText: .constant(""), placeHolderTex: "Search here")
    
}
