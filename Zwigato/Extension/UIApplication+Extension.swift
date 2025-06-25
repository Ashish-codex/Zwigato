//
//  ExtUIApplication.swift
//  Zwigato
//
//  Created by Ashish Prajapati on 24/106/25.
//
import Foundation
import SwiftUI

extension UIApplication{
    
    func endEditingKeyboard(){
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
