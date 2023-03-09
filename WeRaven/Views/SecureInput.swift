//
//  SecureInput.swift
//  WeRaven
//
//  Created by Daniel Lopes on 09/03/23.
//

import SwiftUI

struct SecureInput: View {
    
    @Binding var text: String
    @State var isShowingPassword: Bool = false
    let placeholder: String
    
    var body: some View {
        ZStack(alignment: .leading) {
            if text.isEmpty {
                Text(placeholder)
                    .foregroundColor(.gray)
            }
            if isShowingPassword {
                TextField("", text: $text)
                    .frame(height: 45)
                    .foregroundColor(Color("Background"))
                    .autocorrectionDisabled(true)
                    .autocapitalization(.none)
            } else {
                HStack {
                    SecureField("", text: $text)
                        .frame(height: 45)
                        .foregroundColor(Color("Background"))
                        .autocorrectionDisabled(true)
                        .autocapitalization(.none)
                    Button(action: {
                        isShowingPassword.toggle()
                    }) {
                        Image(systemName: isShowingPassword ? "eye.slash.fill" : "eye.fill")
                            .foregroundColor(Color("Background"))
                    }
                }
            }
            
        }
        .padding(.horizontal, 10)
        .background(Color("Text"))
        .cornerRadius(5)
    }
}

struct SecureInput_Previews: PreviewProvider {
    
    @State static var text: String = ""
    
    static var previews: some View {
        SecureInput(text: $text, placeholder: "Senha")
    }
}
