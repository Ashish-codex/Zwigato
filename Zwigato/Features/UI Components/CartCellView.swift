//
//  CartCellView.swift
//  Zwigato
//
//  Created by Ashish Prajapati on 26/06/25.
//

import SwiftUI

struct CartCellView: View {
    
    let item: ModelRestaurant.ModelMenuItem
    var itemCount:Int
    var onIncreaseQuantity: (()->Void)
    var onDecreaseQuantity: (()->Void)
    
    var body: some View {
        VStack{
            HStack(spacing: 14){
                VStack(alignment: .leading){
                    Text(item.name)
                        .font(.headline)
                        .fontWeight(.semibold)
                        .lineLimit(1)
                    
                    Text("\(item.ingredients)")
                        .font(.subheadline)
                        .fontWeight(.medium)
                        .foregroundStyle(.black.opacity(0.5))
                        .lineLimit(1)
                }
                
                Spacer()
                
                HStack(spacing: 12){
                    AddItemView(
                        itemCount: itemCount,
                        width: 80,
                        height: 32,
                        onIncreaseQuantity: {
                            onIncreaseQuantity()
                        }, onDecreaseQuantity: {
                            onDecreaseQuantity()
                        })

                    Text("₹\(item.perQuantityPrice)")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .lineLimit(1)
                }
            }
        }
    }
}

#Preview {
    CartCellView(
        item:AppHelper.arrRestaurantWithMenuItems.first!.menuItem.first!,
        itemCount: 0,
        onIncreaseQuantity: { },
        onDecreaseQuantity: { }
    )
    .padding(.horizontal)
}
