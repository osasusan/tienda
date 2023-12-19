//
//  LoginViewExtension.swift
//  Amazon local
//
//  Created by Osasu sanchez on 17/10/23.
//

import Foundation
import SwiftUI


extension LoginView{
     struct textFileCus : View {
        @State var text1 :String
        @Binding var text2 :String
        var body: some View{
            
            VStack{
                TextField(text1, text:$text2)
                    .padding()
                    .background(Color.gray)
                    .clipShape(RoundedRectangle(cornerRadius: 35))
            }
        }
    }
}
