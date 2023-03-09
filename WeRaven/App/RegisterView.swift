//
//  RegisterView.swift
//  WeRaven
//
//  Created by Daniel Lopes on 08/03/23.
//

import SwiftUI

struct RegisterView: View {
    @ObservedObject var viewModel = RegisterViewModel()
    
    let dateRange: ClosedRange<Date> = {
        
        let calendar = Calendar.current
        
        let components = calendar.dateComponents([.year], from: Date())
        let currentYear = components.year ?? 2023
        
        let startComponents = DateComponents(year: 1899, month: 1, day: 1)
        let endComponents = DateComponents(year: currentYear - 15, month: 12, day: 31)
        return calendar.date(from:startComponents)!
            ...
            calendar.date(from:endComponents)!
    }()
    
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
                    HStack {
                        TextInput(text: $viewModel.firstName, placeholder: "Nome")
                        TextInput(text: $viewModel.lastName, placeholder: "Sobrenome")
                    }
                    TextInput(text: $viewModel.username, placeholder: "Usuário")
                    TextInput(text: $viewModel.email, placeholder: "E-mail")
                    SecureInput(text: $viewModel.password, placeholder: "Senha")
                    SecureInput(text: $viewModel.confirmPassword, placeholder: "Confirmar senha")
                    DatePicker("Data de nascimento", selection: $viewModel.birthdate, in: dateRange, displayedComponents: [.date])
                    Button(action: {
                        
                    }) {
                        HStack {
                            Spacer()
                            Text("Registrar")
                                .foregroundColor(.black)
                                .font(.title2)
                            Spacer()
                        }
                    }
                    .frame(height: 45)
                    .background(Color("Primary"))
                    .cornerRadius(5)
                    NavigationLink(destination: RegisterView()) {
                        Text("Fazer login")
                    }
                }
                .padding(.horizontal, 10)
            }
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
