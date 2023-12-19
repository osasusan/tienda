//
//  customViewRectaguLr.swift
//  Amazon local
//
//  Created by Osasu sanchez on 26/10/23.
//

import SwiftUI

struct customViewRectaguLr: View {
    @State var image: String
    var body: some View {
      
        VStack{
            Image(image)
                .resizable()
                .frame(width: 200, height: 200)
                .padding(.top,50)
                
        
                Text("osazon")
            }
        }
}



#Preview {
    customViewRectaguLr(image: "busqueda.icon")
}

