//
//  ImageLoaderView.swift
//  Zwigato
//
//  Created by Ashish Prajapati on 26/06/25.
//

import SwiftUI
import SDWebImageSwiftUI

struct ImageLoaderView: View {
    
    let urlString: String
    let resizingMode: ContentMode = .fill
    
    var body: some View {
    
        Rectangle()
            .opacity(0.001)
            .overlay {
                WebImage(url: URL(string: urlString))
                    .resizable()
                    .indicator(.activity)
                    .aspectRatio(contentMode: resizingMode)
                    .allowsHitTesting(false)
            }
            .clipped()
        
    }
}

#Preview {
    ImageLoaderView(urlString: AppHelper.randomImageUrl)
}
