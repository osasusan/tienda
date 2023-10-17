//
//  Alert.swift
//  Amazon local
//
//  Created by Osasu sanchez on 17/10/23.
//

import Foundation
import SwiftUI

struct AlertCustom: ViewModifier {
    var title: String
    var message: String
    
    @Binding var show: Bool
    
    func body(content: Content) -> some View {
        content
            .alert(isPresented: $show) {
                Alert(
                    title: Text(title),
                    message: Text(message)
                )
            }

        
    }
}

extension View {
    func alertCustom(title: String, message: String, show: Binding<Bool>) -> some View {
        modifier(AlertCustom(title: title, message: message, show: show))
    }
}
