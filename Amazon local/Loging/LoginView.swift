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
            customViewRectaguLr(image: "busqueda.icon")
        }
        VStack{
            textFileCus(text1 : "Username", text2: $viewModel.userName)
            textFileCus(text1 : "pass", text2: $viewModel.pass)
           
            Button("Login") {
                if viewModel.userName != "" && viewModel.pass != ""{
                    viewModel.todoBien()
                }else{
                    viewModel.todoMal()
                }
            }
            VStack{
                Text(viewModel.toSuccess)
                    .font(.largeTitle)
                  
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




    
