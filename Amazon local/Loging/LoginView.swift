//
//  ContentView.swift
//  Amazon local
//
//  Created by Osasu sanchez on 5/10/23.
//

import SwiftUI

struct LoginView: View {
 @ObservedObject var viewModel = LoginViewModel()
    
    var body: some View {
      
        VStack {
            Image(systemName: "trash.square.fill")
                .scaleEffect(x:5,y: 5)
                .frame(width: 100,height: 100)
                .foregroundStyle(.tint)
            Text("Ozazon")
            
        }
        VStack{
            TextField("Username", text: $viewModel.userName)
                .padding()
                .background(Color.gray)
                .clipShape(RoundedRectangle(cornerRadius: 35))
            TextField("Pass", text: $viewModel.pass)
                .padding()
                .background(Color.gray)
                .clipShape(RoundedRectangle(cornerRadius: 35))
            Button("Login") {
                if viewModel.userName != "" && viewModel.pass != ""{
                    print("hola")
                    
                    
                }else {
                    viewModel.todoMal()
                }
            }
           
            .padding()
            Spacer()
            
        }
        .alertCustom(title: viewModel.alertTilte, message: viewModel.alertMessage, show: $viewModel.showAlert)
    }
}


#Preview {
    LoginView()
}

//struct LoginView_Previews: PreviewProvider {
//    static var previews: some View {
//        LoginView()
//    }
//}




    
