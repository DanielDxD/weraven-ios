//
//  TextInput.swift
//  WeRaven
//
//  Created by Daniel Lopes on 08/03/23.
//

import SwiftUI

struct TextInput: View {
    @State var isShowingPassword = false
    @Binding var text: String
    
    var placeholder: String
    var isPassword: Bool = false
    var isValid: Bool = true
    var inputType: String = "text"
    
    var body: some View {
        ZStack(alignment: .leading) {
            if text.isEmpty {
               Text(placeholder)
                   .foregroundColor(.gray)
            }
            if isPassword && !isShowingPassword {
                SecureField("", text: $text)
                    .frame(height: 40)
                    .autocapitalization(.none)
                    .autocorrectionDisabled(true)
            } else {
                TextField("", text: $text)
                    .frame(height: 40)
                    .autocapitalization(.none)
                    .autocorrectionDisabled(true)
            }
        }
    }
}

struct TextInput_Previews: PreviewProvider {
    
    @State static var text: String = ""
    
    static var previews: some View {
        TextInput(text: $text, placeholder: "E-mail")
    }
}
