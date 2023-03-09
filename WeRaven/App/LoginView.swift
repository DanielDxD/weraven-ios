//
//  LoginView.swift
//  WeRaven
//
//  Created by Daniel Lopes on 08/03/23.
//

import SwiftUI

struct LoginView: View {
    
    @ObservedObject var viewModel = LoginViewModel()
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color("Background")
                    .ignoresSafeArea(.all)
                VStack {
                    Image("logo")
                        .resizable()
                        .frame(width: 140, height: 130)
                    Text("Entre com sua conta")
                        .font(.title2)
                    TextInput(text: $viewModel.email, placeholder: "E-mail")
                    SecureInput(text: $viewModel.password, placeholder: "Senha")
                    Button(action: {
                        
                    }) {
                        HStack {
                            Spacer()
                            Text("Entrar")
                                .foregroundColor(.black)
                                .font(.title2)
                            Spacer()
                        }
                    }
                    .frame(height: 45)
                    .background(Color("Primary"))
                    .cornerRadius(5)
                    NavigationLink(destination: RegisterView()) {
                        Text("Cadastre-se aqui")
                    }
                }
                .padding(.horizontal, 10)
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
