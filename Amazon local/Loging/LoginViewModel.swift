//
//  LoginViewModel.swift
//  Amazon local
//
//  Created by Osasu sanchez on 16/10/23.
//

import Foundation


class LoginViewModel : ObservableObject{
    @Published var userName = ""
    @Published var pass = ""
    @Published var alertTilte = ""
    @Published var alertMessage = ""
    @Published var showAlert = false
    
    
    
    func todoMal(){
        print("error")
        alertTilte = "Error"
        alertMessage = "Un campo no es correcto"
        showAlert.toggle()
        
    }
}

