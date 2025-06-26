//
//  CheckScreen.swift
//  Zwigato
//
//  Created by Ashish Prajapati on 26/06/25.
//

import SwiftUI

struct CheckOutScreen: View {
    @State private var name: String = ""
    @State private var email: String = ""
    @State private var address: String = ""
    @State private var orderPlaced: Bool = false
    
    private var isFormValid: Bool {
        !name.trimmingCharacters(in: .whitespaces).isEmpty &&
        !email.trimmingCharacters(in: .whitespaces).isEmpty &&
        !address.trimmingCharacters(in: .whitespaces).isEmpty
    }
    
    @Environment(\.dismiss) var dismiss

    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Group {
                
                VStack(alignment: .leading, spacing:9){
                    Text("Name")
                        .font(.headline)
                        .fontWeight(.medium)
                    
                    TextField("Your good name ", text: $name)
                        .padding()
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color.white)
                                .stroke(Color.black.opacity(0.2), lineWidth: 0.8)
                        )
                }
                
                VStack(alignment: .leading, spacing:9){
                    Text("Email")
                        .font(.headline)
                        .fontWeight(.medium)
                    
                    TextField("Your virtual ID ", text: $email)
                        .padding()
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color.white)
                                .stroke(Color.black.opacity(0.2), lineWidth: 0.8)
                        )
                }
                
                VStack(alignment: .leading, spacing:9){
                    Text("Address")
                        .font(.headline)
                        .fontWeight(.medium)
                    
                    TextField("Your food spot", text: $address)
                        .padding()
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color.white)
                                .stroke(Color.black.opacity(0.2), lineWidth: 0.8)
                        )
                }
            }

            Spacer()
            
            
            NavigationLink {
                
            } label: {
                
            }
            


            Button(action: {
                placeOrder()
            }) {
                Text("Place Order")
                    .font(.title3)
                    .fontWeight(.medium)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(
                        isFormValid
                        ? AppHelper.appTheme.opacity(1.0)
                        : AppHelper.appTheme.opacity(0.69)
                    )
                    .foregroundColor(.white)
                    .cornerRadius(12)
            }
            .padding(.top, 40)
            .disabled(!isFormValid)
        }
        .padding()
        .navigationBarBackButtonHidden(true)
        .navigationTitle("Check Out")
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
        
        .alert("✅ Order Placed!", isPresented: $orderPlaced) {
            Button("OK", role: .cancel) {
                
            }
        } message: {
            Text("Thank you for your order. Your food will arrive soon! 🍽️")
        }
        
    }

    func placeOrder() {
        orderPlaced = true
    }
}




#Preview {
    NavigationStack {
        CheckOutScreen()
    }
    
}
